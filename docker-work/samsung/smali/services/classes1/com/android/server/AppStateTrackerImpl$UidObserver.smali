.class public final Lcom/android/server/AppStateTrackerImpl$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$UidObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 754
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidActive(I)V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 759
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidGone(IZ)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 764
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidIdle(IZ)V

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    return-void
.end method
