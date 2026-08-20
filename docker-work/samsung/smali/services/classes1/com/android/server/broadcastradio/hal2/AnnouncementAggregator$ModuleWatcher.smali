.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleWatcher"
.end annotation


# instance fields
.field public currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;"
        }
    .end annotation
.end field

.field public mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/hardware/radio/ICloseHandle;->close()V

    :cond_7
    return-void
.end method

.method public onListUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 64
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->-$$Nest$monListUpdated(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method

.method public setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V
    .registers 2

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/radio/ICloseHandle;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    return-void
.end method
