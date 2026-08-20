.class public abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
.super Landroid/os/Binder;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enrollSoundModel:I = 0x1

.field static final blacklist TRANSACTION_unEnrollSoundModel:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_d
    packed-switch p1, :pswitch_data_46

    .line 66
    packed-switch p1, :pswitch_data_4c

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 86
    :pswitch_1c
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->unEnrollSoundModel()Z

    move-result v2

    .line 87
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    goto :goto_45

    .line 71
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 79
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->enrollSoundModel(IILjava/lang/String;I)Z

    move-result v6

    .line 80
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 82
    nop

    .line 96
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
