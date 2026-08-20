.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;
.super Landroid/database/ContentObserver;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 267
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    .line 271
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExclusiveTaskObserver : key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p2, p3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$mgetUserStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object p2

    if-nez p2, :cond_4b

    .line 276
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doesn\'t have user status for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_4b
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 283
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*** ignore key : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_71
    const-string/jumbo v0, "system/accreset_state"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 290
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accreset_state"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8f

    move v0, p1

    :cond_8f
    iput-boolean v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    return-void

    .line 295
    :cond_92
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$mproccessExclusiveTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    return-void
.end method
