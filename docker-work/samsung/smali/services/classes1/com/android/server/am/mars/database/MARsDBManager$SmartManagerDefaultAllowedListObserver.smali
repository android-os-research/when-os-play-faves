.class public Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartManagerDefaultAllowedListObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V
    .registers 3

    .line 1288
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 1289
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 1294
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_10

    .line 1295
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p1}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fgetTAG(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onChange - mSmartManagerDefaultAllowedListObserver!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_10
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$mgetDefaultAllowedListDBValues(Lcom/android/server/am/mars/database/MARsDBManager;)V

    return-void
.end method
