.class public Lcom/android/server/content/SyncManager$9;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 3

    .line 597
    iget-object p0, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v0, "onAuthorityRemoved"

    invoke-static {p0, p1, v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mremoveSyncsForAuthority(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method
