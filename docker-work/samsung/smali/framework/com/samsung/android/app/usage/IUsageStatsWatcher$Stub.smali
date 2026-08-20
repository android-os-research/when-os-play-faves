.class public abstract Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsWatcher.java"

# interfaces
.implements Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/usage/IUsageStatsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notePauseComponent:I = 0x2

.field static final blacklist TRANSACTION_noteResumeComponent:I = 0x1

.field static final blacklist TRANSACTION_noteStopComponent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "com.samsung.android.app.usage.IUsageStatsWatcher"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/usage/IUsageStatsWatcher;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "com.samsung.android.app.usage.IUsageStatsWatcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_e

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "noteStopComponent"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "notePauseComponent"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "noteResumeComponent"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 242
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "com.samsung.android.app.usage.IUsageStatsWatcher"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    packed-switch p1, :pswitch_data_7a

    .line 111
    packed-switch p1, :pswitch_data_80

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 144
    :pswitch_1c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 146
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 148
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 151
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V

    .line 153
    goto :goto_79

    .line 130
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_3b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 132
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 134
    .restart local v3    # "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 136
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 137
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V

    .line 139
    goto :goto_79

    .line 116
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_5a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 118
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 120
    .restart local v3    # "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V

    .line 125
    nop

    .line 160
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
