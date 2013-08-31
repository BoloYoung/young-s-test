//
//  Shader.fsh
//  Raiders
//
//  Created by apple on 13-1-22.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
