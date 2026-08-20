.class Lcom/samsung/android/game/FgCheckThread$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 8
    .param p1, "pauseComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 173
    if-nez p1, :cond_3

    .line 174
    return-void

    .line 177
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notePauseComponent(), received pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FgCheckThread"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 181
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v0, p4}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_41
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 10
    .param p1, "resumeComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 153
    if-nez p1, :cond_3

    .line 154
    return-void

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v1, v0, p4}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    .line 159
    .local v1, "pkgWithUserId":Lcom/samsung/android/game/PkgWithUserId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteResumeComponent(), received pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FgCheckThread"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v0, :cond_53

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 162
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_53
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mFocusedPkg:Lcom/samsung/android/game/PkgWithUserId;
    invoke-static {v2}, Lcom/samsung/android/game/FgCheckThread;->access$300(Lcom/samsung/android/game/FgCheckThread;)Lcom/samsung/android/game/PkgWithUserId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/game/PkgWithUserId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 167
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$3;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v2, v1}, Lcom/samsung/android/game/FgCheckThread;->sendResumeMessage(Lcom/samsung/android/game/PkgWithUserId;)V

    .line 169
    :cond_64
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "stopComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 186
    return-void
.end method
