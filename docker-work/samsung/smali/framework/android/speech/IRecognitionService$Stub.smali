.class public abstract Landroid/speech/IRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IRecognitionService.java"

# interfaces
.implements Landroid/speech/IRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionService"

.field static final greylist-max-o TRANSACTION_cancel:I = 0x3

.field static final blacklist TRANSACTION_checkRecognitionSupport:I = 0x4

.field static final greylist-max-o TRANSACTION_startListening:I = 0x1

.field static final greylist-max-o TRANSACTION_stopListening:I = 0x2

.field static final blacklist TRANSACTION_triggerModelDownload:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.speech.IRecognitionService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.speech.IRecognitionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IRecognitionService;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/speech/IRecognitionService;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/speech/IRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_18

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "triggerModelDownload"

    return-object v0

    .line 118
    :pswitch_9
    const-string v0, "checkRecognitionSupport"

    return-object v0

    .line 114
    :pswitch_c
    const-string v0, "cancel"

    return-object v0

    .line 110
    :pswitch_f
    const-string/jumbo v0, "stopListening"

    return-object v0

    .line 106
    :pswitch_13
    const-string/jumbo v0, "startListening"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 328
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/speech/IRecognitionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 137
    const-string v0, "android.speech.IRecognitionService"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    packed-switch p1, :pswitch_data_84

    .line 149
    packed-switch p1, :pswitch_data_8a

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 194
    :pswitch_1c
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 195
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionService$Stub;->triggerModelDownload(Landroid/content/Intent;)V

    .line 197
    goto :goto_83

    .line 184
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_2b
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 186
    .restart local v2    # "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionSupportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionSupportCallback;

    move-result-object v3

    .line 187
    .local v3, "_arg1":Landroid/speech/IRecognitionSupportCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/speech/IRecognitionService$Stub;->checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    .line 189
    goto :goto_83

    .line 174
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/speech/IRecognitionSupportCallback;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v2

    .line 176
    .local v2, "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 177
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Landroid/speech/IRecognitionService$Stub;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 179
    goto :goto_83

    .line 166
    .end local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    .end local v3    # "_arg1":Z
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionService$Stub;->stopListening(Landroid/speech/IRecognitionListener;)V

    .line 169
    goto :goto_83

    .line 154
    .end local v2    # "_arg0":Landroid/speech/IRecognitionListener;
    :pswitch_64
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 156
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v3

    .line 158
    .local v3, "_arg1":Landroid/speech/IRecognitionListener;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 159
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/IRecognitionService$Stub;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 161
    nop

    .line 204
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/speech/IRecognitionListener;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    :goto_83
    return v1

    :pswitch_data_84
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_55
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
