from PIL import Image
import re

def parse_animation_script(script_path):
    """Parse the animation script and return frame data"""
    frames = []
    
    with open(script_path, 'r') as f:
        for line in f:
            line = line.strip()
            if line.startswith('frame'):
                # Parse "frame N, duration" format
                match = re.match(r'frame\s+(\d+),\s*(\d+)', line)
                if match:
                    frame_num = int(match.group(1))
                    duration = int(match.group(2))
                    frames.append((frame_num, duration))
    
    return frames

def create_animated_gif(png_path, script_path, output_path='animated_output.gif'):
    """Create animated GIF from sprite sheet and animation script"""
    
    # Load the sprite sheet
    sprite_sheet = Image.open(png_path)
    
    # Parse animation script
    frame_data = parse_animation_script(script_path)
    
    if not frame_data:
        print("No frame data found in animation script")
        return
    
    # Calculate frame dimensions (assuming horizontal sprite sheet)
    sheet_width, sheet_height = sprite_sheet.size
    num_frames = max(frame[0] for frame in frame_data) + 1
    frame_width = sheet_width // num_frames
    frame_height = sheet_height
    
    # Extract individual frames
    gif_frames = []
    durations = []
    
    for frame_num, duration in frame_data:
        # Extract frame from sprite sheet
        left = frame_num * frame_width
        right = left + frame_width
        frame = sprite_sheet.crop((left, 0, right, frame_height))
        
        gif_frames.append(frame)
        durations.append(duration * 50)  # Convert to milliseconds (assuming 50ms per unit)
    
    # Create animated GIF
    if gif_frames:
        gif_frames[0].save(
            output_path,
            save_all=True,
            append_images=gif_frames[1:],
            duration=durations,
            loop=0
        )
        print(f"Animated GIF created: {output_path}")
    else:
        print("No frames to animate")

# Usage
if __name__ == "__main__":
    create_animated_gif('front.png', 'anim.asm', 'character_animation.gif')
