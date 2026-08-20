.class public Lcom/android/server/NetworkManagementService$NetdTetherEventListener;
.super Lcom/android/internal/net/INetdTetherEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetdTetherEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 946
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetherEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onTetherStart()V
    .registers 3

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "send intent to KVES to inform tether has started"

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p0}, Lcom/android/server/NetworkManagementService;->-$$Nest$msendusbTetheringUpdate(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method public onTetherStop()V
    .registers 1

    return-void
.end method
