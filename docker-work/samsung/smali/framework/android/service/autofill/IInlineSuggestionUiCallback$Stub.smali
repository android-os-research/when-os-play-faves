.class public abstract Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionUiCallback.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClick:I = 0x1

.field static final blacklist TRANSACTION_onContent:I = 0x3

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onLongClick:I = 0x2

.field static final blacklist TRANSACTION_onStartIntentSender:I = 0x6

.field static final blacklist TRANSACTION_onTransferTouchFocusToImeWindow:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUiCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IInlineSuggestionUiCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_1e

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "onStartIntentSender"

    return-object v0

    .line 88
    :pswitch_9
    const-string/jumbo v0, "onTransferTouchFocusToImeWindow"

    return-object v0

    .line 84
    :pswitch_d
    const-string/jumbo v0, "onError"

    return-object v0

    .line 80
    :pswitch_11
    const-string/jumbo v0, "onContent"

    return-object v0

    .line 76
    :pswitch_15
    const-string/jumbo v0, "onLongClick"

    return-object v0

    .line 72
    :pswitch_19
    const-string/jumbo v0, "onClick"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_66

    .line 119
    packed-switch p1, :pswitch_data_6c

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 163
    :pswitch_1c
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 164
    .local v2, "_arg0":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onStartIntentSender(Landroid/content/IntentSender;)V

    .line 166
    goto :goto_65

    .line 153
    .end local v2    # "_arg0":Landroid/content/IntentSender;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 155
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    .line 158
    goto :goto_65

    .line 147
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_3a
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onError()V

    .line 148
    goto :goto_65

    .line 134
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUi;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Landroid/service/autofill/IInlineSuggestionUi;
    sget-object v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 138
    .local v3, "_arg1":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 143
    goto :goto_65

    .line 128
    .end local v2    # "_arg0":Landroid/service/autofill/IInlineSuggestionUi;
    .end local v3    # "_arg1":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_5d
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onLongClick()V

    .line 129
    goto :goto_65

    .line 123
    :pswitch_61
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onClick()V

    .line 124
    nop

    .line 173
    :goto_65
    return v1

    :pswitch_data_66
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5d
        :pswitch_3e
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
