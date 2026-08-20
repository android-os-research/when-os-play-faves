.class public Lcom/android/server/remoteappmode/RemoteAppModeService$2;
.super Landroid/database/ContentObserver;
.source "RemoteAppModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/remoteappmode/RemoteAppModeService;->initializeStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/os/Handler;)V
    .registers 3

    .line 300
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 303
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 304
    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$minitializeStates(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    .line 305
    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmResolver(Lcom/android/server/remoteappmode/RemoteAppModeService;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/database/ContentObserver;)V

    return-void
.end method
