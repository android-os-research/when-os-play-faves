.class public Lcom/android/server/am/mars/database/MARsDBManager$1;
.super Ljava/lang/Object;
.source "MARsDBManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$1;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 250
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 253
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 255
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$1;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fgetTAG(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Packages database not exist, and not created!!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method
