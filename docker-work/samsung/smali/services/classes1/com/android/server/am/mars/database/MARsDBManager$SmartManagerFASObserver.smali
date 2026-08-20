.class public Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartManagerFASObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V
    .registers 3

    .line 1315
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 1316
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 1324
    :cond_3
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_22

    .line 1325
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p1}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fgetTAG(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange - mSmartManagerFASObserver! Uri = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p1, 0x0

    const-string p3, "MARs-self"

    .line 1328
    invoke-virtual {p2, p3, p1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2c

    return-void

    .line 1332
    :cond_2c
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p1}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fgetmMARsDBManagerHandler(Lcom/android/server/am/mars/database/MARsDBManager;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fgetmFASDBupdateRunnable(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
