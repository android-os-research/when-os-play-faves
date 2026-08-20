.class public abstract Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallDiagnosticServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearDiagnosticMessage:I = 0x2

.field static final blacklist TRANSACTION_displayDiagnosticMessage:I = 0x1

.field static final blacklist TRANSACTION_overrideDisconnectMessage:I = 0x4

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_14

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "overrideDisconnectMessage"

    return-object v0

    .line 74
    :pswitch_9
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    .line 70
    :pswitch_d
    const-string v0, "clearDiagnosticMessage"

    return-object v0

    .line 66
    :pswitch_10
    const-string v0, "displayDiagnosticMessage"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 247
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_6a

    .line 105
    packed-switch p1, :pswitch_data_70

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 144
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 147
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 149
    goto :goto_68

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 139
    goto :goto_68

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->clearDiagnosticMessage(Ljava/lang/String;I)V

    .line 127
    goto :goto_68

    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 115
    .local v4, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 117
    nop

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/CharSequence;
    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_51
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
