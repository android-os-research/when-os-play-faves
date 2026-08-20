.class public abstract Landroid/service/translation/ITranslationService$Stub;
.super Landroid/os/Binder;
.source "ITranslationService.java"

# interfaces
.implements Landroid/service/translation/ITranslationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/translation/ITranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/translation/ITranslationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onCreateTranslationSession:I = 0x3

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onTranslationCapabilitiesRequest:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.service.translation.ITranslationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/translation/ITranslationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/translation/ITranslationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.service.translation.ITranslationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/translation/ITranslationService;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/service/translation/ITranslationService;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/service/translation/ITranslationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/translation/ITranslationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_16

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :pswitch_5
    const-string/jumbo v0, "onTranslationCapabilitiesRequest"

    return-object v0

    .line 78
    :pswitch_9
    const-string/jumbo v0, "onCreateTranslationSession"

    return-object v0

    .line 74
    :pswitch_d
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 70
    :pswitch_11
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 229
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Landroid/service/translation/ITranslationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 97
    const-string v0, "android.service.translation.ITranslationService"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 109
    packed-switch p1, :pswitch_data_64

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 139
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 144
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/translation/ITranslationService$Stub;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    .line 146
    goto :goto_5d

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_33
    sget-object v2, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationContext;

    .line 129
    .local v2, "_arg0":Landroid/view/translation/TranslationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 132
    .local v4, "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/translation/ITranslationService$Stub;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    .line 134
    goto :goto_5d

    .line 121
    .end local v2    # "_arg0":Landroid/view/translation/TranslationContext;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    :pswitch_4e
    invoke-virtual {p0}, Landroid/service/translation/ITranslationService$Stub;->onDisconnected()V

    .line 122
    goto :goto_5d

    .line 114
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/service/translation/ITranslationService$Stub;->onConnected(Landroid/os/IBinder;)V

    .line 117
    nop

    .line 153
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4e
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
