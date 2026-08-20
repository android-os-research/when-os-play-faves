.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;
.super Ljava/lang/Object;
.source "KnoxGuardService.java"

# interfaces
.implements Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockedByPasscode()V
    .registers 5

    .line 532
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUnlockedByPasscode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 534
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->-$$Nest$fgetmContext(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
