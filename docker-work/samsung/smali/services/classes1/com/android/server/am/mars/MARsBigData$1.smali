.class public Lcom/android/server/am/mars/MARsBigData$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsBigData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/MARsBigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 232
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 234
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V

    .line 235
    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsBigData;->-$$Nest$msendBigDataInfoPLEV(Lcom/android/server/am/mars/MARsBigData;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void
.end method
