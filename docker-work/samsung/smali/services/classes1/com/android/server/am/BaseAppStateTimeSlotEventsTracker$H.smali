.class public Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;
.super Landroid/os/Handler;
.source "BaseAppStateTimeSlotEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H"
.end annotation


# static fields
.field public static final MSG_NEW_EVENT:I


# instance fields
.field public final mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 3

    .line 161
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_10

    .line 169
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->handleNewEvent(Ljava/lang/String;I)V

    :goto_10
    return-void
.end method
