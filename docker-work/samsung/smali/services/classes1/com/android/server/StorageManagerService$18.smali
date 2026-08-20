.class public Lcom/android/server/StorageManagerService$18;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 6533
    iput-object p1, p0, Lcom/android/server/StorageManagerService$18;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "StorageManagerService"

    const-string/jumbo p2, "mPolicyReceiver :: "

    .line 6535
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6536
    iget-object p0, p0, Lcom/android/server/StorageManagerService$18;->this$0:Lcom/android/server/StorageManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$misMountDisallowedByEAS(Lcom/android/server/StorageManagerService;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mapplyCurrentSdCardPolicy(Lcom/android/server/StorageManagerService;Z)V

    return-void
.end method
