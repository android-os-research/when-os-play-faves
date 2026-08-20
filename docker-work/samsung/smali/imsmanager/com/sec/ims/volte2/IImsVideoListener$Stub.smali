.class public abstract Lcom/sec/ims/volte2/IImsVideoListener$Stub;
.super Landroid/os/Binder;
.source "IImsVideoListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallDownGraded:I = 0xb

.field static final TRANSACTION_onCameraEvent:I = 0x2

.field static final TRANSACTION_onCameraFirstFrameReady:I = 0x3

.field static final TRANSACTION_onCameraStopEvent:I = 0x8

.field static final TRANSACTION_onCameraSwitchFailure:I = 0x7

.field static final TRANSACTION_onCameraSwitchSuccess:I = 0x6

.field static final TRANSACTION_onCaptureFailure:I = 0x5

.field static final TRANSACTION_onCaptureSuccess:I = 0x4

.field static final TRANSACTION_onNoFarFrame:I = 0xc

.field static final TRANSACTION_onRecordEvent:I = 0xe

.field static final TRANSACTION_onVideoAttemped:I = 0xd

.field static final TRANSACTION_onVideoAvailable:I = 0x1

.field static final TRANSACTION_onVideoHeld:I = 0x9

.field static final TRANSACTION_onVideoResumed:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsVideoListener;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IImsVideoListener;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_e2

    .line 98
    packed-switch p1, :pswitch_data_e8

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 221
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 225
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 226
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onRecordEvent(IZZ)V

    .line 228
    goto/16 :goto_e0

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoAttemped(I)V

    .line 216
    goto/16 :goto_e0

    .line 205
    .end local v2    # "_arg0":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onNoFarFrame(I)V

    .line 208
    goto/16 :goto_e0

    .line 197
    .end local v2    # "_arg0":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCallDownGraded(I)V

    .line 200
    goto/16 :goto_e0

    .line 189
    .end local v2    # "_arg0":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoResumed(I)V

    .line 192
    goto/16 :goto_e0

    .line 181
    .end local v2    # "_arg0":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoHeld(I)V

    .line 184
    goto/16 :goto_e0

    .line 171
    .end local v2    # "_arg0":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 174
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraStopEvent(IZ)V

    .line 176
    goto :goto_e0

    .line 161
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraSwitchFailure(II)V

    .line 166
    goto :goto_e0

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraSwitchSuccess(II)V

    .line 156
    goto :goto_e0

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 144
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCaptureFailure(IZ)V

    .line 146
    goto :goto_e0

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 133
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 136
    goto :goto_e0

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraFirstFrameReady(I)V

    .line 124
    goto :goto_e0

    .line 111
    .end local v2    # "_arg0":I
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 114
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraEvent(IZ)V

    .line 116
    goto :goto_e0

    .line 103
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoAvailable(I)V

    .line 106
    nop

    .line 235
    .end local v2    # "_arg0":I
    :goto_e0
    return v1

    nop

    :pswitch_data_e2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_c6
        :pswitch_bb
        :pswitch_a8
        :pswitch_99
        :pswitch_8a
        :pswitch_7b
        :pswitch_6c
        :pswitch_60
        :pswitch_54
        :pswitch_48
        :pswitch_3c
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
