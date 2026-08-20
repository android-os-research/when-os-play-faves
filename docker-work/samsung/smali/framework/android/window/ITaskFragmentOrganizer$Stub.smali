.class public abstract Landroid/window/ITaskFragmentOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityReparentToTask:I = 0x6

.field static final blacklist TRANSACTION_onTaskFragmentAppeared:I = 0x1

.field static final blacklist TRANSACTION_onTaskFragmentError:I = 0x5

.field static final blacklist TRANSACTION_onTaskFragmentInfoChanged:I = 0x2

.field static final blacklist TRANSACTION_onTaskFragmentParentInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_onTaskFragmentVanished:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskFragmentOrganizer;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskFragmentOrganizer;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_1e

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 121
    :pswitch_5
    const-string/jumbo v0, "onActivityReparentToTask"

    return-object v0

    .line 117
    :pswitch_9
    const-string/jumbo v0, "onTaskFragmentError"

    return-object v0

    .line 113
    :pswitch_d
    const-string/jumbo v0, "onTaskFragmentParentInfoChanged"

    return-object v0

    .line 109
    :pswitch_11
    const-string/jumbo v0, "onTaskFragmentVanished"

    return-object v0

    .line 105
    :pswitch_15
    const-string/jumbo v0, "onTaskFragmentInfoChanged"

    return-object v0

    .line 101
    :pswitch_19
    const-string/jumbo v0, "onTaskFragmentAppeared"

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

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 347
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 132
    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 136
    const-string v0, "android.window.ITaskFragmentOrganizer"

    .line 137
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_d
    packed-switch p1, :pswitch_data_88

    .line 148
    packed-switch p1, :pswitch_data_8e

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v1

    .line 197
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 201
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 202
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskFragmentOrganizer$Stub;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 204
    goto :goto_86

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 190
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 192
    goto :goto_86

    .line 177
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 179
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    .line 180
    .local v3, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 182
    goto :goto_86

    .line 169
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/res/Configuration;
    :pswitch_59
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 170
    .local v2, "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    .line 172
    goto :goto_86

    .line 161
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_68
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 162
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    .line 164
    goto :goto_86

    .line 153
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_77
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 154
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    .line 156
    nop

    .line 211
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :goto_86
    return v1

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_77
        :pswitch_68
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
