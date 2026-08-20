.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 311
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearAccessibilityFocus()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 448
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v1
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "bounds"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrixValues"    # [F
    .param p12, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 324
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_70

    .line 326
    const/4 v0, 0x0

    move-object/from16 v4, p3

    :try_start_11
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_6c

    .line 327
    move/from16 v5, p4

    :try_start_16
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_68

    .line 328
    move-object/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_64

    .line 329
    move/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_60

    .line 330
    move/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5c

    .line 331
    move-wide/from16 v9, p8

    :try_start_2a
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    .line 332
    move-object/from16 v11, p10

    :try_start_2f
    invoke-virtual {v1, v11, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_54

    .line 333
    move-object/from16 v12, p11

    :try_start_34
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_50

    .line 334
    move-object/from16 v13, p12

    :try_start_39
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4c

    .line 335
    move-object/from16 v14, p0

    :try_start_3e
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4a

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_4a
    move-exception v0

    goto :goto_85

    :catchall_4c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_85

    :catchall_50
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_83

    :catchall_54
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_81

    :catchall_58
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7f

    :catchall_5c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7d

    :catchall_60
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7b

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_77

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_75

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_75
    move/from16 v5, p4

    :goto_77
    move-object/from16 v6, p5

    :goto_79
    move/from16 v7, p6

    :goto_7b
    move/from16 v8, p7

    :goto_7d
    move-wide/from16 v9, p8

    :goto_7f
    move-object/from16 v11, p10

    :goto_81
    move-object/from16 v12, p11

    :goto_83
    move-object/from16 v13, p12

    :goto_85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v0
.end method

.method public blacklist findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_71

    .line 368
    move-object/from16 v4, p3

    :try_start_10
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6d

    .line 369
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_16
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 370
    move/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_65

    .line 371
    move-object/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_61

    .line 372
    move/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5d

    .line 373
    move/from16 v9, p8

    :try_start_2a
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_59

    .line 374
    move-wide/from16 v10, p9

    :try_start_2f
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_55

    .line 375
    move-object/from16 v12, p11

    :try_start_34
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 376
    move-object/from16 v13, p12

    :try_start_39
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4d

    .line 377
    move-object/from16 v14, p0

    :try_start_3e
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4b

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    nop

    .line 382
    return-void

    .line 380
    :catchall_4b
    move-exception v0

    goto :goto_86

    :catchall_4d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_76

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_76
    move-object/from16 v5, p4

    :goto_78
    move/from16 v6, p5

    :goto_7a
    move-object/from16 v7, p6

    :goto_7c
    move/from16 v8, p7

    :goto_7e
    move/from16 v9, p8

    :goto_80
    move-wide/from16 v10, p9

    :goto_82
    move-object/from16 v12, p11

    :goto_84
    move-object/from16 v13, p12

    :goto_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    throw v0
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_71

    .line 347
    move-object/from16 v4, p3

    :try_start_10
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6d

    .line 348
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_16
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 349
    move/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_65

    .line 350
    move-object/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_61

    .line 351
    move/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5d

    .line 352
    move/from16 v9, p8

    :try_start_2a
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_59

    .line 353
    move-wide/from16 v10, p9

    :try_start_2f
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_55

    .line 354
    move-object/from16 v12, p11

    :try_start_34
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 355
    move-object/from16 v13, p12

    :try_start_39
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4d

    .line 356
    move-object/from16 v14, p0

    :try_start_3e
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4b

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_4b
    move-exception v0

    goto :goto_86

    :catchall_4d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_76

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_76
    move-object/from16 v5, p4

    :goto_78
    move/from16 v6, p5

    :goto_7a
    move-object/from16 v7, p6

    :goto_7c
    move/from16 v8, p7

    :goto_7e
    move/from16 v9, p8

    :goto_80
    move-wide/from16 v10, p9

    :goto_82
    move-object/from16 v12, p11

    :goto_84
    move-object/from16 v13, p12

    :goto_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw v0
.end method

.method public blacklist findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_71

    .line 389
    move/from16 v4, p3

    :try_start_10
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6d

    .line 390
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_16
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 391
    move/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_65

    .line 392
    move-object/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_61

    .line 393
    move/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5d

    .line 394
    move/from16 v9, p8

    :try_start_2a
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_59

    .line 395
    move-wide/from16 v10, p9

    :try_start_2f
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_55

    .line 396
    move-object/from16 v12, p11

    :try_start_34
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 397
    move-object/from16 v13, p12

    :try_start_39
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4d

    .line 398
    move-object/from16 v14, p0

    :try_start_3e
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4b

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    nop

    .line 403
    return-void

    .line 401
    :catchall_4b
    move-exception v0

    goto :goto_86

    :catchall_4d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_76

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p3

    :goto_76
    move-object/from16 v5, p4

    :goto_78
    move/from16 v6, p5

    :goto_7a
    move-object/from16 v7, p6

    :goto_7c
    move/from16 v8, p7

    :goto_7e
    move/from16 v9, p8

    :goto_80
    move-wide/from16 v10, p9

    :goto_82
    move-object/from16 v12, p11

    :goto_84
    move-object/from16 v13, p12

    :goto_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw v0
.end method

.method public blacklist focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_71

    .line 410
    move/from16 v4, p3

    :try_start_10
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6d

    .line 411
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_16
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 412
    move/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_65

    .line 413
    move-object/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_61

    .line 414
    move/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5d

    .line 415
    move/from16 v9, p8

    :try_start_2a
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_59

    .line 416
    move-wide/from16 v10, p9

    :try_start_2f
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_55

    .line 417
    move-object/from16 v12, p11

    :try_start_34
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 418
    move-object/from16 v13, p12

    :try_start_39
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4d

    .line 419
    move-object/from16 v14, p0

    :try_start_3e
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4b

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :catchall_4b
    move-exception v0

    goto :goto_86

    :catchall_4d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_76

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p3

    :goto_76
    move-object/from16 v5, p4

    :goto_78
    move/from16 v6, p5

    :goto_7a
    move-object/from16 v7, p6

    :goto_7c
    move/from16 v8, p7

    :goto_7e
    move/from16 v9, p8

    :goto_80
    move-wide/from16 v10, p9

    :goto_82
    move-object/from16 v12, p11

    :goto_84
    move-object/from16 v13, p12

    :goto_86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    throw v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 318
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public blacklist notifyOutsideTouch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    nop

    .line 465
    return-void

    .line 463
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw v1
.end method

.method public greylist-max-o performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 429
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 433
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 435
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 438
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2f

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v1
.end method
