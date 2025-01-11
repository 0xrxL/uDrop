.class public Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "CommentsInfoItem.java"


# static fields
.field public static final NO_LIKE_COUNT:I = -0x1

.field public static final NO_STREAM_POSITION:I = -0x1

.field public static final UNKNOWN_REPLY_COUNT:I = -0x1


# instance fields
.field private commentId:Ljava/lang/String;

.field private commentText:Lorg/schabi/newpipe/extractor/stream/Description;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private creatorReply:Z

.field private heartedByUploader:Z

.field private isChannelOwner:Z

.field private likeCount:I

.field private pinned:Z

.field private replies:Lorg/schabi/newpipe/extractor/Page;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private replyCount:I

.field private streamPosition:I

.field private textualLikeCount:Ljava/lang/String;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 19
    nop

    .line 20
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    return v0
.end method

.method public getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    return-object v0
.end method

.method public getReplyCount()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    return v0
.end method

.method public getStreamPosition()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    return v0
.end method

.method public getTextualLikeCount()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasCreatorReply()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    return v0
.end method

.method public isChannelOwner()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    return v0
.end method

.method public isHeartedByUploader()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderVerified:Z

    return v0
.end method

.method public setChannelOwner(Z)V
    .locals 0
    .param p1, "channelOwner"    # Z

    .line 181
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    .line 182
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentId"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0
    .param p1, "commentText"    # Lorg/schabi/newpipe/extractor/stream/Description;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 61
    return-void
.end method

.method public setCreatorReply(Z)V
    .locals 0
    .param p1, "creatorReply"    # Z

    .line 190
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    .line 191
    return-void
.end method

.method public setHeartedByUploader(Z)V
    .locals 0
    .param p1, "isHeartedByUploader"    # Z

    .line 126
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    .line 127
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0
    .param p1, "likeCount"    # I

    .line 114
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    .line 115
    return-void
.end method

.method public setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .line 138
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    .line 139
    return-void
.end method

.method public setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0
    .param p1, "replies"    # Lorg/schabi/newpipe/extractor/Page;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    .line 173
    return-void
.end method

.method public setReplyCount(I)V
    .locals 0
    .param p1, "replyCount"    # I

    .line 164
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    .line 165
    return-void
.end method

.method public setStreamPosition(I)V
    .locals 0
    .param p1, "streamPosition"    # I

    .line 150
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    .line 151
    return-void
.end method

.method public setTextualLikeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "textualLikeCount"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "textualUploadDate"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0
    .param p1, "uploadDate"    # Lorg/schabi/newpipe/extractor/localization/DateWrapper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 103
    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "uploaderAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 78
    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderName"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderUrl"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0
    .param p1, "uploaderVerified"    # Z

    .line 142
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderVerified:Z

    .line 143
    return-void
.end method
