.class public Lcom/android/media/remotedisplay/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x2

.field public static final STATUS_CONNECTED:I = 0x4

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_IN_USE:I = 0x1

.field public static final STATUS_NOT_AVAILABLE:I


# instance fields
.field private mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 80
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-direct {v0, p1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/media/remotedisplay/RemoteDisplay;->setName(Ljava/lang/String;)V

    .line 82
    return-void

    .line 78
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-nez v0, :cond_d

    .line 172
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-direct {v0, v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 174
    :cond_d
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationDisplayId()I
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    return v0
.end method

.method public getVolumeHandling()I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 105
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 108
    :cond_11
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 97
    :cond_11
    return-void
.end method

.method public setPresentationDisplayId(I)V
    .registers 3
    .param p1, "presentationDisplayId"    # I

    .line 159
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    if-eq v0, p1, :cond_d

    .line 160
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 163
    :cond_d
    return-void
.end method

.method public setStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .line 115
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    if-eq v0, p1, :cond_d

    .line 116
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 119
    :cond_d
    return-void
.end method

.method public setVolume(I)V
    .registers 3
    .param p1, "volume"    # I

    .line 126
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    if-eq v0, p1, :cond_d

    .line 127
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 130
    :cond_d
    return-void
.end method

.method public setVolumeHandling(I)V
    .registers 3
    .param p1, "volumeHandling"    # I

    .line 148
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    if-eq v0, p1, :cond_d

    .line 149
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 152
    :cond_d
    return-void
.end method

.method public setVolumeMax(I)V
    .registers 3
    .param p1, "volumeMax"    # I

    .line 137
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    if-eq v0, p1, :cond_d

    .line 138
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 141
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDisplay{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
