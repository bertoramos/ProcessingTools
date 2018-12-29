
/**
 * Button with a colored label and background.
 * @author bertoramez
 */

class Button {
  
  private final String label;
  private final int font_size;
  
  private final int x0, y0, w, h;
  
  private final int r, g, b;
  private final int txt_r, txt_g, txt_b;
  
  /**
   * x0, y0 : position from left top corner
   * w : width
   * h : heigth
   * r, g, b : background color
   */
  Button(int x0, int y0, int w, int h, int r, int g, int b) {
    this.x0 = x0;
    this.y0 = y0;
    this.w = w;
    this.h = h;
    
    this.label = "";
    this.font_size = 0;
    
    this.r = r;
    this.g = g;
    this.b = b;
    
    this.txt_r = 0;
    this.txt_g = 0;
    this.txt_b = 0;
  }
  
  /**
   * x0, y0 : position from left top corner
   * w : width
   * h : heigth
   * r, g, b : background color
   * txt_r, txt_g, txt_b : label color
   */
  Button(int x0, int y0, int w, int h, int r, int g, int b, String label, int font_size, int txt_r, int txt_g, int txt_b) {
    
    this.x0 = x0;
    this.y0 = y0;
    this.w = w;
    this.h = h;
    
    this.label = label;
    this.font_size = font_size;
    
    this.r = r;
    this.g = g;
    this.b = b;
    
    this.txt_r = txt_r;
    this.txt_g = txt_g;
    this.txt_b = txt_b;
  }
  
  public void paint() {
    fill(r,g,b);
    rect(this.x0, this.y0, this.w, this.h);
    
    if(this.label.equals("")) return;
    
    textSize(this.font_size);
    fill(txt_r, txt_g, txt_b);
    
    float tw = textWidth(label);
    float th = textAscent();
    
    float tx = x0;
    float ty = y0+h;
    
    text(label, tx + (w - tw)/2, ty - (h - th)/2);
  }
  
  
  public boolean isPressed(int x, int y) {
    return ( x0 <= x && x <= x0+w ) && ( y0 <= y && y <= y0+h );
  }
  
}
