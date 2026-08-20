.class public abstract Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureHoverListener.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBackPressed:I = 0x4

.field static final blacklist TRANSACTION_onHoverEnter:I = 0x1

.field static final blacklist TRANSACTION_onHoverExit:I = 0x2

.field static final blacklist TRANSACTION_onHoverExitTowardBack:I = 0x3

.field static final blacklist TRANSACTION_onHoverStay:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_14

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "onHoverStay"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "onBackPressed"

    return-object v0

    .line 73
    :pswitch_b
    const-string v0, "onHoverExitTowardBack"

    return-object v0

    .line 69
    :pswitch_e
    const-string v0, "onHoverExit"

    return-object v0

    .line 65
    :pswitch_11
    const-string v0, "onHoverEnter"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_3c

    .line 108
    packed-switch p1, :pswitch_data_42

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverStay(II)V

    .line 138
    goto :goto_3b

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onBackPressed()V

    .line 128
    goto :goto_3b

    .line 122
    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverExitTowardBack()V

    .line 123
    goto :goto_3b

    .line 117
    :pswitch_33
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverExit()V

    .line 118
    goto :goto_3b

    .line 112
    :pswitch_37
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverEnter()V

    .line 113
    nop

    .line 145
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
