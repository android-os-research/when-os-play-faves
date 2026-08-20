.class public final Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;
.super Ljava/lang/Object;
.source "OverlayableSystemBooleanResourceWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "OverlayableSystemBooleanResourceWrapper"


# instance fields
.field public final mCleanerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final mValueRef:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$pHi9IhEV8baFaIaS-pmL6Gevk7U(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->lambda$create$0(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smevaluate(Landroid/content/Context;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mUserId:I

    .line 115
    iput-object p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mValueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    iput-object p3, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mCleanerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/function/Consumer;)Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;",
            ">;)",
            "Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;"
        }
    .end annotation

    .line 81
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static/range {p0 .. p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;I)Z

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 83
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 85
    new-instance v8, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v8, v0, v6, v7}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 89
    new-instance v11, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 90
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "android"

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 93
    new-instance v15, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;-><init>(Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/function/Consumer;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V

    const/4 v12, 0x0

    const/4 v14, 0x4

    move-object/from16 v9, p0

    move-object v10, v15

    move-object/from16 v13, p2

    .line 102
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 105
    new-instance v0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v15}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    invoke-static/range {p0 .. p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v8
.end method

.method public static evaluate(Landroid/content/Context;I)Z
    .registers 3

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android"

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    const-string p1, "OverlayableSystemBooleanResourceWrapper"

    const-string/jumbo v0, "getResourcesForApplication(\"android\") failed"

    .line 143
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$create$0(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mCleanerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    .line 156
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public get()Z
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mValueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mUserId:I

    return p0
.end method
