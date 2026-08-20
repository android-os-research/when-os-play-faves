.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final greylist-max-o DBG:Ljava/lang/Boolean;

.field private static final blacklist NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final greylist-max-o mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAdapter:Landroid/nfc/NfcAdapter;

.field final greylist-max-o mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/nfc/NfcAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 225
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    .line 226
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 227
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    .line 229
    return-void
.end method


# virtual methods
.method public blacklist changeDiscoveryTech(Landroid/os/Binder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 308
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/nfc/INfcAdapter;->changeDiscoveryTech(Landroid/os/IBinder;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 311
    goto :goto_c

    .line 309
    :catch_6
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .param p1, "userHandle"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    monitor-enter p0

    .line 319
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 320
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 321
    .local v2, "token":Landroid/os/Binder;
    iput p1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 322
    iput-object p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 323
    iput-object p4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    .line 324
    iput-object p5, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 325
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 326
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    .line 327
    if-eqz v0, :cond_1e

    .line 328
    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_25

    .line 330
    :cond_1e
    const-string v1, "NFC"

    const-string v3, "Activity must be resumed."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_25
    return-void

    .line 326
    .end local v0    # "isResumed":Z
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public blacklist changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "userHandle"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Binder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcAdapter;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 339
    goto :goto_11

    .line 337
    :catch_b
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public greylist-max-o createBeamShareData(B)Landroid/nfc/BeamShareData;
    .registers 20
    .param p1, "peerLlcpVersion"    # B

    .line 458
    move-object/from16 v1, p0

    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    move/from16 v3, p1

    invoke-direct {v0, v2, v3}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    move-object v2, v0

    .line 460
    .local v2, "event":Landroid/nfc/NfcEvent;
    const-string v0, "NFC"

    const-string v4, "createBeamShareData start new"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    monitor-enter p0

    .line 463
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_d4

    .line 464
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_22

    const/4 v4, 0x0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    return-object v4

    .line 472
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_1d
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_d7

    .line 466
    .restart local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_22
    :try_start_22
    iget-object v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 467
    .local v4, "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v5, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 468
    .local v5, "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    iget-object v6, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 469
    .local v6, "message":Landroid/nfc/NdefMessage;
    iget-object v7, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 470
    .local v7, "uris":[Landroid/net/Uri;
    iget v8, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 471
    .local v8, "flags":I
    iget-object v9, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 472
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .local v9, "activity":Landroid/app/Activity;
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_d4

    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 476
    .local v10, "ident":J
    if-eqz v4, :cond_40

    .line 477
    :try_start_35
    invoke-interface {v4, v2}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3b

    move-object v6, v0

    goto :goto_40

    .line 510
    :catchall_3b
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_c2

    .line 479
    :cond_40
    :goto_40
    if-eqz v5, :cond_ab

    .line 480
    :try_start_42
    invoke-interface {v5, v2}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v12

    move-object v7, v12

    .line 481
    if-eqz v7, :cond_a4

    .line 482
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v12, "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    array-length v13, v7

    const/4 v14, 0x0

    :goto_50
    if-ge v14, v13, :cond_94

    aget-object v15, v7, v14

    .line 484
    .local v15, "uri":Landroid/net/Uri;
    if-nez v15, :cond_60

    .line 485
    const-string v0, "NFC"
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_a7

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .local v16, "event":Landroid/nfc/NfcEvent;
    :try_start_5a
    const-string v2, "Uri not allowed to be null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    goto :goto_8f

    .line 488
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_60
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_85

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "content"

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    goto :goto_85

    .line 495
    :cond_79
    invoke-virtual {v9}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-static {v15, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 496
    .end local v15    # "uri":Landroid/net/Uri;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 491
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_85
    :goto_85
    const-string v2, "NFC"

    move-object/from16 v17, v0

    .end local v0    # "scheme":Ljava/lang/String;
    .local v17, "scheme":Ljava/lang/String;
    const-string v0, "Uri needs to have either scheme file or scheme content"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    nop

    .line 483
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v17    # "scheme":Ljava/lang/String;
    :goto_8f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    goto :goto_50

    .line 499
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .local v2, "event":Landroid/nfc/NfcEvent;
    :cond_94
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    move-object v7, v0

    goto :goto_ad

    .line 481
    .end local v12    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_a4
    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    goto :goto_ad

    .line 510
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :catchall_a7
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    goto :goto_c2

    .line 479
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :cond_ab
    move-object/from16 v16, v2

    .line 502
    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    :goto_ad
    if-eqz v7, :cond_c6

    array-length v0, v7

    if-lez v0, :cond_c6

    .line 503
    array-length v0, v7

    const/4 v2, 0x0

    :goto_b4
    if-ge v2, v0, :cond_c6

    aget-object v12, v7, v2

    .line 505
    .local v12, "uri":Landroid/net/Uri;
    const-string v13, "com.android.nfc"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v12, v14}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_be
    .catchall {:try_start_5a .. :try_end_be} :catchall_c1

    .line 503
    .end local v12    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 510
    :catchall_c1
    move-exception v0

    :goto_c2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v0

    .line 510
    :cond_c6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    nop

    .line 512
    new-instance v0, Landroid/nfc/BeamShareData;

    invoke-virtual {v9}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v6, v7, v2, v8}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v0

    .line 472
    .end local v4    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v5    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v6    # "message":Landroid/nfc/NdefMessage;
    .end local v7    # "uris":[Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "activity":Landroid/app/Activity;
    .end local v10    # "ident":J
    .end local v16    # "event":Landroid/nfc/NfcEvent;
    .restart local v2    # "event":Landroid/nfc/NfcEvent;
    :catchall_d4
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "event":Landroid/nfc/NfcEvent;
    .restart local v16    # "event":Landroid/nfc/NfcEvent;
    :goto_d7
    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d9

    throw v0

    :catchall_d9
    move-exception v0

    goto :goto_d7
.end method

.method declared-synchronized greylist-max-o destroyActivityState(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 218
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 219
    .local v0, "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_f

    .line 220
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    .line 221
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 223
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_f
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o disableReaderMode(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 251
    monitor-enter p0

    .line 252
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 253
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 254
    const/4 v2, 0x0

    iput v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 255
    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 256
    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 257
    .local v3, "token":Landroid/os/Binder;
    iget-boolean v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v4

    .line 258
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    .line 259
    if-eqz v0, :cond_18

    .line 260
    invoke-virtual {p0, v3, v2, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 263
    :cond_18
    return-void

    .line 258
    .end local v0    # "isResumed":Z
    .end local v3    # "token":Landroid/os/Binder;
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public greylist-max-o enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 237
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 238
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 239
    iput-object p4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 240
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 241
    .local v1, "token":Landroid/os/Binder;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v2

    .line 242
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    .line 243
    if-eqz v0, :cond_16

    .line 244
    invoke-virtual {p0, v1, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 246
    :cond_16
    return-void

    .line 242
    .end local v0    # "isResumed":Z
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method declared-synchronized greylist-max-o findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 191
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    if-ne v2, p1, :cond_19

    .line 192
    monitor-exit p0

    return-object v1

    .line 194
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_19
    goto :goto_7

    .line 195
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1a
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 189
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .registers 5
    .param p1, "app"    # Landroid/app/Application;

    .line 86
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .line 87
    .local v1, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_17

    .line 88
    return-object v1

    .line 90
    .end local v1    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :cond_17
    goto :goto_6

    .line 91
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized greylist-max-o findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .registers 4

    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 210
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    if-eqz v2, :cond_19

    .line 211
    monitor-exit p0

    return-object v1

    .line 213
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_19
    goto :goto_7

    .line 214
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1a
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 208
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 200
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 201
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_12

    .line 202
    new-instance v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    move-object v0, v1

    .line 203
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 205
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_12
    monitor-exit p0

    return-object v0

    .line 199
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 550
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 659
    monitor-enter p0

    .line 660
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 661
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2f
    if-eqz v0, :cond_34

    .line 664
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 666
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_34
    monitor-exit p0

    .line 667
    return-void

    .line 666
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;

    .line 616
    monitor-enter p0

    .line 617
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 618
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2f
    if-nez v0, :cond_33

    monitor-exit p0

    return-void

    .line 620
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 621
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 622
    .local v2, "token":Landroid/os/Binder;
    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3f

    move v3, v4

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    move v9, v3

    .line 624
    .local v9, "readerModeFlagsSet":Z
    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v1

    :goto_49
    move v10, v3

    .line 625
    .local v10, "pollTechSet":Z
    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    if-eq v3, v5, :cond_50

    move v3, v4

    goto :goto_51

    :cond_50
    move v3, v1

    :goto_51
    move v11, v3

    .line 626
    .local v11, "listenTechSet":Z
    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    if-nez v3, :cond_60

    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    if-nez v3, :cond_60

    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v1

    :cond_60
    :goto_60
    move v12, v4

    .line 627
    .local v12, "changeRoutingFlagsSet":Z
    iget v5, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 630
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .local v5, "userId":I
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_7e

    .line 631
    if-eqz v9, :cond_6a

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 637
    :cond_6a
    if-nez v10, :cond_6e

    if-eqz v11, :cond_73

    .line 638
    :cond_6e
    const/16 v0, 0xff

    invoke-virtual {p0, v2, v0, v0}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 641
    :cond_73
    if-eqz v12, :cond_7d

    .line 643
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 646
    :cond_7d
    return-void

    .line 630
    .end local v2    # "token":Landroid/os/Binder;
    .end local v5    # "userId":I
    .end local v9    # "readerModeFlagsSet":Z
    .end local v10    # "pollTechSet":Z
    .end local v11    # "listenTechSet":Z
    .end local v12    # "changeRoutingFlagsSet":Z
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .registers 19
    .param p1, "activity"    # Landroid/app/Activity;

    .line 559
    move-object/from16 v7, p0

    const/4 v1, 0x0

    .line 561
    .local v1, "readerModeFlags":I
    const/4 v2, -0x1

    .line 562
    .local v2, "pollTech":I
    const/4 v3, -0x1

    .line 563
    .local v3, "listenTech":I
    const/4 v4, 0x0

    .line 564
    .local v4, "proto":Ljava/lang/String;
    const/4 v5, 0x0

    .line 565
    .local v5, "tech":Ljava/lang/String;
    const/4 v6, -0x1

    .line 566
    .local v6, "userId":I
    const/4 v8, 0x0

    .line 569
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v9, 0x0

    .line 571
    .local v9, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 572
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 573
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v10, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3c

    const-string v10, "NFC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume() for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_a3

    move-object/from16 v12, p1

    :try_start_26
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_3c
    move-object/from16 v12, p1

    .line 574
    :goto_3e
    if-nez v0, :cond_42

    monitor-exit p0

    return-void

    .line 575
    :cond_42
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 576
    iget-object v10, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 577
    .local v10, "token":Landroid/os/Binder;
    iget v11, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_a8

    .line 578
    .end local v1    # "readerModeFlags":I
    .local v11, "readerModeFlags":I
    :try_start_49
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    move-object v9, v1

    .line 580
    iget v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_a0

    move v13, v1

    .line 581
    .end local v2    # "pollTech":I
    .local v13, "pollTech":I
    :try_start_4f
    iget v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_9c

    move v14, v1

    .line 582
    .end local v3    # "listenTech":I
    .local v14, "listenTech":I
    :try_start_52
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_97

    move-object v15, v1

    .line 583
    .end local v4    # "proto":Ljava/lang/String;
    .local v15, "proto":Ljava/lang/String;
    :try_start_55
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_91

    move-object/from16 v16, v1

    .line 584
    .end local v5    # "tech":Ljava/lang/String;
    .local v16, "tech":Ljava/lang/String;
    :try_start_59
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    move-object v8, v1

    .line 585
    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_89

    .line 587
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v6    # "userId":I
    .local v3, "userId":I
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_80

    .line 588
    if-eqz v11, :cond_64

    .line 589
    invoke-virtual {v7, v10, v11, v9}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 593
    :cond_64
    const/4 v0, -0x1

    if-ne v14, v0, :cond_69

    if-eq v13, v0, :cond_6c

    .line 594
    :cond_69
    invoke-virtual {v7, v10, v13, v14}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 597
    :cond_6c
    if-nez v15, :cond_72

    if-nez v16, :cond_72

    if-eqz v8, :cond_7c

    .line 598
    :cond_72
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/nfc/NfcActivityManager;->changeRoutingTable(Landroid/os/Binder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 602
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 603
    return-void

    .line 587
    .end local v10    # "token":Landroid/os/Binder;
    :catchall_80
    move-exception v0

    move v6, v3

    move v1, v11

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    goto :goto_a6

    .end local v3    # "userId":I
    .restart local v6    # "userId":I
    :catchall_89
    move-exception v0

    move v1, v11

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    goto :goto_a6

    .end local v16    # "tech":Ljava/lang/String;
    .restart local v5    # "tech":Ljava/lang/String;
    :catchall_91
    move-exception v0

    move v1, v11

    move v2, v13

    move v3, v14

    move-object v4, v15

    goto :goto_a6

    .end local v15    # "proto":Ljava/lang/String;
    .restart local v4    # "proto":Ljava/lang/String;
    :catchall_97
    move-exception v0

    move v1, v11

    move v2, v13

    move v3, v14

    goto :goto_a6

    .end local v14    # "listenTech":I
    .local v3, "listenTech":I
    :catchall_9c
    move-exception v0

    move v1, v11

    move v2, v13

    goto :goto_a6

    .end local v13    # "pollTech":I
    .restart local v2    # "pollTech":I
    :catchall_a0
    move-exception v0

    move v1, v11

    goto :goto_a6

    .end local v11    # "readerModeFlags":I
    .restart local v1    # "readerModeFlags":I
    :catchall_a3
    move-exception v0

    move-object/from16 v12, p1

    :goto_a6
    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a8

    throw v0

    :catchall_a8
    move-exception v0

    goto :goto_a6
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 654
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 554
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 650
    return-void
.end method

.method public greylist-max-o onNdefPushComplete(B)V
    .registers 5
    .param p1, "peerLlcpVersion"    # B

    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 521
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 523
    :cond_9
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    move-object v0, v1

    .line 524
    .local v0, "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    .line 525
    new-instance v1, Landroid/nfc/NfcEvent;

    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    .line 527
    .local v1, "event":Landroid/nfc/NfcEvent;
    if-eqz v0, :cond_19

    .line 528
    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    .line 530
    :cond_19
    return-void

    .line 524
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1    # "event":Landroid/nfc/NfcEvent;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public greylist-max-o onTagDiscovered(Landroid/nfc/Tag;)V
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    monitor-enter p0

    .line 536
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 537
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 539
    :cond_9
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    move-object v0, v1

    .line 540
    .local v0, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 543
    if-eqz v0, :cond_12

    .line 544
    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 547
    :cond_12
    return-void

    .line 540
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method greylist-max-o registerApplication(Landroid/app/Application;)V
    .registers 4
    .param p1, "app"    # Landroid/app/Application;

    .line 95
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 96
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_11

    .line 97
    new-instance v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    move-object v0, v1

    .line 98
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_11
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    .line 101
    return-void
.end method

.method greylist-max-o requestNfcServiceCallback()V
    .registers 3

    .line 435
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 438
    goto :goto_c

    .line 436
    :catch_6
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 439
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setDiscoveryTech(Landroid/app/Activity;II)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 280
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 281
    iput p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 282
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 283
    .local v1, "token":Landroid/os/Binder;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v2

    .line 284
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    .line 285
    if-eqz v0, :cond_14

    .line 286
    invoke-virtual {p0, v1, p2, p3}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 288
    :cond_14
    return-void

    .line 284
    .end local v0    # "isResumed":Z
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public greylist-max-o setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 345
    monitor-enter p0

    .line 346
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 347
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 348
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 349
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    .line 350
    if-eqz v0, :cond_11

    .line 352
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_14

    .line 355
    :cond_11
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 357
    :goto_14
    return-void

    .line 349
    .end local v0    # "isResumed":Z
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public greylist-max-o setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 363
    monitor-enter p0

    .line 364
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 365
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 366
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 367
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    .line 368
    if-eqz v0, :cond_11

    .line 370
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_14

    .line 373
    :cond_11
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 375
    :goto_14
    return-void

    .line 367
    .end local v0    # "isResumed":Z
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public greylist-max-o setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "flags"    # I

    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 381
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 382
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 383
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 384
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 385
    if-eqz v0, :cond_13

    .line 387
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_16

    .line 390
    :cond_13
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 392
    :goto_16
    return-void

    .line 384
    .end local v0    # "isResumed":Z
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public greylist-max-o setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p3, "flags"    # I

    .line 397
    monitor-enter p0

    .line 398
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 399
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 400
    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 401
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 402
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 403
    if-eqz v0, :cond_13

    .line 405
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_16

    .line 408
    :cond_13
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 410
    :goto_16
    return-void

    .line 402
    .end local v0    # "isResumed":Z
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public greylist-max-o setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 415
    monitor-enter p0

    .line 416
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 417
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 418
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    .line 419
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    .line 420
    if-eqz v0, :cond_11

    .line 422
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_14

    .line 425
    :cond_11
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    .line 427
    :goto_14
    return-void

    .line 419
    .end local v0    # "isResumed":Z
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public greylist-max-o setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 266
    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "NFC"

    const-string v1, "Setting reader mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_f
    :try_start_f
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 271
    goto :goto_1b

    .line 269
    :catch_15
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method greylist-max-o unregisterApplication(Landroid/app/Application;)V
    .registers 5
    .param p1, "app"    # Landroid/app/Application;

    .line 104
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 105
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_1f

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app was not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NFC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_1f
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    .line 110
    return-void
.end method

.method public blacklist unsetDiscoveryTech(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 293
    monitor-enter p0

    .line 294
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 295
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v1, -0x1

    iput v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 296
    iput v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 297
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 298
    .local v1, "token":Landroid/os/Binder;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v2

    .line 299
    .local v0, "isResumed":Z
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 300
    if-eqz v0, :cond_17

    .line 301
    const/16 v2, 0xff

    invoke-virtual {p0, v1, v2, v2}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 304
    :cond_17
    return-void

    .line 299
    .end local v0    # "isResumed":Z
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method greylist-max-o verifyNfcPermission()V
    .registers 3

    .line 443
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 446
    goto :goto_c

    .line 444
    :catch_6
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
