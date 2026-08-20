.class public abstract Landroid/window/ITaskOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizer.java"

# interfaces
.implements Landroid/window/ITaskOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addStartingWindow:I = 0x1

.field static final blacklist TRANSACTION_copySplashScreenView:I = 0x3

.field static final blacklist TRANSACTION_onAppSplashScreenViewRemoved:I = 0x4

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x8

.field static final blacklist TRANSACTION_onImeDrawnOnTask:I = 0x9

.field static final blacklist TRANSACTION_onSplitLayoutChangeRequested:I = 0xa

.field static final blacklist TRANSACTION_onTaskAppeared:I = 0x5

.field static final blacklist TRANSACTION_onTaskInfoChanged:I = 0x7

.field static final blacklist TRANSACTION_onTaskVanished:I = 0x6

.field static final blacklist TRANSACTION_preloadSplashScreenAppIcon:I = 0xb

.field static final blacklist TRANSACTION_removeStartingWindow:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "android.window.ITaskOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "android.window.ITaskOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_14

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizer;

    return-object v1

    .line 118
    :cond_14
    new-instance v1, Landroid/window/ITaskOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_30

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 171
    :pswitch_5
    const-string/jumbo v0, "preloadSplashScreenAppIcon"

    return-object v0

    .line 167
    :pswitch_9
    const-string/jumbo v0, "onSplitLayoutChangeRequested"

    return-object v0

    .line 163
    :pswitch_d
    const-string/jumbo v0, "onImeDrawnOnTask"

    return-object v0

    .line 159
    :pswitch_11
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 155
    :pswitch_15
    const-string/jumbo v0, "onTaskInfoChanged"

    return-object v0

    .line 151
    :pswitch_19
    const-string/jumbo v0, "onTaskVanished"

    return-object v0

    .line 147
    :pswitch_1d
    const-string/jumbo v0, "onTaskAppeared"

    return-object v0

    .line 143
    :pswitch_21
    const-string/jumbo v0, "onAppSplashScreenViewRemoved"

    return-object v0

    .line 139
    :pswitch_25
    const-string v0, "copySplashScreenView"

    return-object v0

    .line 135
    :pswitch_28
    const-string/jumbo v0, "removeStartingWindow"

    return-object v0

    .line 131
    :pswitch_2c
    const-string v0, "addStartingWindow"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 122
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 516
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 182
    invoke-static {p1}, Landroid/window/ITaskOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 186
    const-string v0, "android.window.ITaskOrganizer"

    .line 187
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 188
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    :cond_d
    packed-switch p1, :pswitch_data_da

    .line 198
    packed-switch p1, :pswitch_data_e0

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 194
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return v1

    .line 289
    :pswitch_1c
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 291
    .local v2, "_arg0":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 294
    .local v4, "_arg2":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskOrganizer$Stub;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    .line 296
    goto/16 :goto_d8

    .line 279
    .end local v2    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/res/Configuration;
    :pswitch_38
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 281
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 282
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    .line 284
    goto/16 :goto_d8

    .line 271
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onImeDrawnOnTask(I)V

    .line 274
    goto/16 :goto_d8

    .line 263
    .end local v2    # "_arg0":I
    :pswitch_5c
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 264
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 266
    goto :goto_d8

    .line 255
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_6b
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 256
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 258
    goto :goto_d8

    .line 247
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_7a
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 248
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 250
    goto :goto_d8

    .line 237
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_89
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 239
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 240
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 242
    goto :goto_d8

    .line 229
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->onAppSplashScreenViewRemoved(I)V

    .line 232
    goto :goto_d8

    .line 221
    .end local v2    # "_arg0":I
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->copySplashScreenView(I)V

    .line 224
    goto :goto_d8

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_b6
    sget-object v2, Landroid/window/StartingWindowRemovalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowRemovalInfo;

    .line 214
    .local v2, "_arg0":Landroid/window/StartingWindowRemovalInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizer$Stub;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    .line 216
    goto :goto_d8

    .line 203
    .end local v2    # "_arg0":Landroid/window/StartingWindowRemovalInfo;
    :pswitch_c5
    sget-object v2, Landroid/window/StartingWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/StartingWindowInfo;

    .line 205
    .local v2, "_arg0":Landroid/window/StartingWindowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizer$Stub;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    .line 208
    nop

    .line 303
    .end local v2    # "_arg0":Landroid/window/StartingWindowInfo;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :goto_d8
    return v1

    nop

    :pswitch_data_da
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_b6
        :pswitch_ab
        :pswitch_a0
        :pswitch_89
        :pswitch_7a
        :pswitch_6b
        :pswitch_5c
        :pswitch_50
        :pswitch_38
        :pswitch_1c
    .end packed-switch
.end method
