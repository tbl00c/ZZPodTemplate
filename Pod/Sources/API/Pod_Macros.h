//
//  ${POD_NAME}Macros.h
//  ${POD_NAME}Macros
//
//  Created by ${USER_NAME} on ${DATE}.
//

#ifndef ${POD_NAME}Macros_h
#define ${POD_NAME}Macros_h

#define     ${POD_NAME}Version						@"0.0.1"
#define     ${POD_NAME}Bundle                       [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"${POD_NAME}" ofType:@"bundle"]]
#define     ${POD_NAME}Image(imageName)             [UIImage imageNamed:imageName inBundle:${POD_NAME}Bundle compatibleWithTraitCollection:nil]
#define     ${POD_NAME}FileUrl(name, type)          [${POD_NAME}Bundle URLForResource:name withExtension:type]
#define     ${POD_NAME}FilePath(name, type)         [${POD_NAME}Bundle pathForResource:name ofType:type]

#endif /* ${POD_NAME}Macros_h */
