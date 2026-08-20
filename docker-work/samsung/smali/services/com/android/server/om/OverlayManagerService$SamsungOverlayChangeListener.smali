.class public final Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungOverlayChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static synthetic $r8$lambda$SxJAPeSHIPjrBXEy9itKriOdhrA(Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->lambda$onSamsungOverlaysChanged$0(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 2192
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private synthetic lambda$onSamsungOverlaysChanged$0(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const-string v9, "OverlayManager"

    if-eqz v1, :cond_37

    const-string/jumbo v2, "zipped-overlay"

    move-object v3, p2

    .line 2206
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 2209
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2210
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, p3

    .line 2209
    invoke-static/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateActivityManagerforSamsungOverlay(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZZ)V

    goto :goto_52

    .line 2214
    :cond_23
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2215
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "android"

    .line 2216
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    move-object v1, v2

    move v2, p3

    move v5, p4

    .line 2214
    invoke-static/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateActivityManagerforSamsungOverlay(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZZ)V

    goto :goto_52

    .line 2219
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOverlaysChanged for overlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 2224
    :goto_52
    :try_start_52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSamsungOverlaysChanged - overlayPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CallingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_8d

    if-eqz v10, :cond_81

    if-eq v6, v0, :cond_83

    :cond_81
    if-nez v6, :cond_8d

    :cond_83
    move/from16 v0, p7

    .line 2234
    invoke-interface {v8, v7, v0}, Landroid/content/om/ISamsungOverlayCallback;->overlayStateChanged(Ljava/lang/String;Z)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v0

    .line 2237
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public onSamsungOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/lang/String;Z)V
    .registers 19

    move-object v1, p0

    .line 2199
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mpersistSettingsLocked(Lcom/android/server/om/OverlayManagerService;)V

    .line 2200
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmExecutorService(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2201
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmExecutorService(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v10, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p6

    move v4, p3

    move/from16 v5, p7

    move-object v6, p1

    move-object v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_31

    :cond_29
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "onSamsungOverlaysChanged - mExecutorService is null"

    .line 2241
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method
