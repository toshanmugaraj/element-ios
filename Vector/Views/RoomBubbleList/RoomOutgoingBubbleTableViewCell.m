/*
 Copyright 2015 OpenMarket Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "RoomOutgoingBubbleTableViewCell.h"

#pragma mark - UI Constant definitions
#define MXKROOMBUBBLETABLEVIEWCELL_OUTGOING_HEIGHT_REDUCTION_WHEN_SENDER_INFO_IS_HIDDEN -10

@implementation RoomOutgoingBubbleTableViewCell

- (void)render:(MXKCellData *)cellData
{
    [super render:cellData];
    
    if (self.bubbleData)
    {
        // TODO handle here pagination display per day
        
        // TODO handle here timestamp display
        
        // TODO handle here unsent
        
        // Add unsent label for failed components
//        for (MXKRoomBubbleComponent *component in self.bubbleData.bubbleComponents)
//        {
//            if (component.event.mxkState == MXKEventStateSendingFailed)
//            {
//                UIButton *unsentButton = [[UIButton alloc] initWithFrame:CGRectMake(0, component.position.y, 58 , 20)];
//                
//                [unsentButton setTitle:[NSBundle mxk_localizedStringForKey:@"unsent"] forState:UIControlStateNormal];
//                [unsentButton setTitle:[NSBundle mxk_localizedStringForKey:@"unsent"] forState:UIControlStateSelected];
//                [unsentButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//                [unsentButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
//                
//                unsentButton.backgroundColor = [UIColor whiteColor];
//                unsentButton.titleLabel.font =  [UIFont systemFontOfSize:14];
//                
//                [unsentButton addTarget:self action:@selector(onResendToggle:) forControlEvents:UIControlEventTouchUpInside];
//                
//                [self.dateTimeLabelContainer addSubview:unsentButton];
//                self.dateTimeLabelContainer.hidden = NO;
//                self.dateTimeLabelContainer.userInteractionEnabled = YES;
//                
//                // ensure that dateTimeLabelContainer is at front to catch the tap event
//                [self.dateTimeLabelContainer.superview bringSubviewToFront:self.dateTimeLabelContainer];
//            }
//        }
    }
}

@end