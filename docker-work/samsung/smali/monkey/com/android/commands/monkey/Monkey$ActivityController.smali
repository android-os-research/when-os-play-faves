.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$ActivityController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    return-void
.end method

.method private isActivityStartingAllowed(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 291
    return v1

    .line 298
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 299
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "android.intent.action.MAIN"

    if-ne v2, v4, :cond_4d

    if-eqz v0, :cond_4d

    .line 301
    const-string v2, "android.intent.category.HOME"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 303
    :try_start_23
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmPm(Lcom/android/commands/monkey/Monkey;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 305
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 304
    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 306
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 307
    .local v4, "launcherPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_40} :catch_44

    if-eqz v5, :cond_43

    .line 308
    return v1

    .line 313
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "launcherPackage":Ljava/lang/String;
    :cond_43
    goto :goto_4d

    .line 310
    :catch_44
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v4, "** Failed talking with package manager!"

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 312
    return v3

    .line 315
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return v3
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 319
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 320
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    // activityResuming("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x1

    .line 323
    .local v1, "allow":Z
    :goto_2f
    if-nez v1, :cond_62

    .line 324
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_62

    .line 325
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_4b

    const-string v4, "Allowing"

    goto :goto_4d

    :cond_4b
    const-string v4, "Rejecting"

    :goto_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resume of package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 329
    :cond_62
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 330
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 331
    return v1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/commands/monkey/Monkey$ActivityController;->isActivityStartingAllowed(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 272
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I

    move-result v1

    if-lez v1, :cond_46

    .line 279
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 280
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_22

    const-string v4, "Allowing"

    goto :goto_24

    :cond_22
    const-string v4, "Rejecting"

    :goto_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 282
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 284
    .end local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_46
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 285
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    .line 286
    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 13
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .line 337
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 338
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// CRASH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Short Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 340
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Long Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Changelist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 343
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Build Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\n// "

    invoke-virtual {p7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 347
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f9

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 351
    :cond_f9
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_10c

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_10a

    goto :goto_10c

    .line 364
    :cond_10a
    const/4 v1, 0x0

    return v1

    .line 352
    :cond_10c
    :goto_10c
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 353
    :try_start_10f
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_11d

    .line 354
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 356
    :cond_11d
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 357
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAppCrashBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 358
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, p1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V

    .line 360
    :cond_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_10f .. :try_end_130} :catchall_138

    .line 361
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 360
    :catchall_138
    move-exception v2

    :try_start_139
    monitor-exit v1
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v2
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .line 372
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 373
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// NOT RESPONDING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 374
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v1, p3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 377
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 378
    :cond_49
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 379
    :try_start_4c
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAnrTraces(Lcom/android/commands/monkey/Monkey;Z)V

    .line 380
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestDumpsysMemInfo(Lcom/android/commands/monkey/Monkey;Z)V

    .line 381
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestProcRank(Lcom/android/commands/monkey/Monkey;Z)V

    .line 382
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 383
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestAnrBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 384
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, p1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V

    .line 386
    :cond_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_8d

    .line 387
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreTimeouts(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 388
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 389
    :try_start_79
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 390
    monitor-exit v1

    goto :goto_83

    :catchall_80
    move-exception v2

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_80

    throw v2

    .line 394
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v2, -0x1

    :cond_8c
    return v2

    .line 386
    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v2
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 398
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 399
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// WATCHDOG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 400
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 402
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v1

    .line 403
    :try_start_22
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 404
    :cond_37
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 405
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V

    .line 407
    :cond_44
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 408
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmRequestWatchdogBugreport(Lcom/android/commands/monkey/Monkey;Z)V

    .line 411
    :cond_51
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2, v3}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fputmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;Z)V

    .line 412
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_22 .. :try_end_57} :catchall_78

    .line 413
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 414
    :goto_5a
    :try_start_5a
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_75

    if-eqz v1, :cond_6a

    .line 416
    :try_start_62
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_67} :catch_68
    .catchall {:try_start_62 .. :try_end_67} :catchall_75

    goto :goto_69

    .line 417
    :catch_68
    move-exception v1

    .line 418
    :goto_69
    goto :goto_5a

    .line 420
    :cond_6a
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_75

    .line 421
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->-$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v3, -0x1

    :cond_74
    return v3

    .line 420
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1

    .line 412
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v2
.end method
