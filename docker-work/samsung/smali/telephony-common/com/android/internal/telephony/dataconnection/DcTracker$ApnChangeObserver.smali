.class Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 1071
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1072
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataConnectionTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 2

    .line 1077
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const p1, 0x42013

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
