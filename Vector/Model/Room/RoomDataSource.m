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

#import "RoomDataSource.h"

#import "EventFormatter.h"
#import "RoomIncomingBubbleTableViewCell.h"
#import "RoomOutgoingBubbleTableViewCell.h"

@implementation RoomDataSource

- (instancetype)initWithRoomId:(NSString *)roomId andMatrixSession:(MXSession *)matrixSession
{
    self = [super initWithRoomId:roomId andMatrixSession:matrixSession];
    if (self)
    {
        // Keep default Cell data class (MXKRoomBubbleCellDataWithAppendingMode)
//        [self registerCellDataClass:MXKRoomBubbleCellDataWithAppendingMode.class forCellIdentifier:kMXKRoomBubbleCellDataIdentifier];
        
        // Replace cell view classes
        [self registerCellViewClass:RoomIncomingBubbleTableViewCell.class forCellIdentifier:kMXKRoomIncomingTextMsgBubbleTableViewCellIdentifier];
        [self registerCellViewClass:RoomIncomingBubbleTableViewCell.class forCellIdentifier:kMXKRoomIncomingAttachmentBubbleTableViewCellIdentifier];
        [self registerCellViewClass:RoomOutgoingBubbleTableViewCell.class forCellIdentifier:kMXKRoomOutgoingTextMsgBubbleTableViewCellIdentifier];
        [self registerCellViewClass:RoomOutgoingBubbleTableViewCell.class forCellIdentifier:kMXKRoomOutgoingAttachmentBubbleTableViewCellIdentifier];
        
        // Replace event formatter
        self.eventFormatter = [[EventFormatter alloc] initWithMatrixSession:self.mxSession];
        
        // TODO custom here self.eventsFilterForMessages according to Vector requirements
        
        // Set bubble pagination
        self.bubblesPagination = MXKRoomDataSourceBubblesPaginationPerDay;
    }
    return self;
}

@end
