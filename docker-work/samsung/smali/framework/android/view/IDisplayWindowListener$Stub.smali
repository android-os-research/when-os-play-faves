.class public abstract Landroid/view/IDisplayWindowListener$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowListener.java"

# interfaces
.implements Landroid/view/IDisplayWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDisplayAdded:I = 0x1

.field static final blacklist TRANSACTION_onDisplayConfigurationChanged:I = 0x2

.field static final blacklist TRANSACTION_onDisplayRemoved:I = 0x3

.field static final blacklist TRANSACTION_onFixedRotationFinished:I = 0x5

.field static final blacklist TRANSACTION_onFixedRotationStarted:I = 0x4

.field static final blacklist TRANSACTION_onKeepClearAreasChanged:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.view.IDisplayWindowListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.view.IDisplayWindowListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDisplayWindowListener;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayWindowListener;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/view/IDisplayWindowListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayWindowListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_1e

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "onKeepClearAreasChanged"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onFixedRotationFinished"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "onFixedRotationStarted"

    return-object v0

    .line 95
    :pswitch_11
    const-string/jumbo v0, "onDisplayRemoved"

    return-object v0

    .line 91
    :pswitch_15
    const-string/jumbo v0, "onDisplayConfigurationChanged"

    return-object v0

    .line 87
    :pswitch_19
    const-string/jumbo v0, "onDisplayAdded"

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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 309
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "android.view.IDisplayWindowListener"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_78

    .line 134
    packed-switch p1, :pswitch_data_7e

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 183
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 188
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IDisplayWindowListener$Stub;->onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V

    .line 190
    goto :goto_76

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationFinished(I)V

    .line 178
    goto :goto_76

    .line 165
    .end local v2    # "_arg0":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationStarted(II)V

    .line 170
    goto :goto_76

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayRemoved(I)V

    .line 160
    goto :goto_76

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    .line 150
    .local v3, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    .line 152
    goto :goto_76

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/res/Configuration;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayAdded(I)V

    .line 142
    nop

    .line 197
    .end local v2    # "_arg0":I
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_58
        :pswitch_4d
        :pswitch_3e
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
