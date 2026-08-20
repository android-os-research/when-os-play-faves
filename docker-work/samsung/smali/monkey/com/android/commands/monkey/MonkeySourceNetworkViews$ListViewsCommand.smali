.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewsCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 15
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .line 164
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 167
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 168
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v3, "No accessibility event has occured yet"

    invoke-direct {v2, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 170
    :cond_11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "packageName":Ljava/lang/String;
    :try_start_19
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-$$Nest$sfgetsPm()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 173
    invoke-interface {v3, v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 175
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-$$Nest$smgetIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 176
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v5, "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 178
    .local v6, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v6

    move v8, v1

    :goto_38
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    .line 179
    .local v9, "field":Ljava/lang/reflect/Field;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    nop

    .end local v9    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 181
    :cond_5a
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_64} :catch_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_64} :catch_65

    return-object v7

    .line 184
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    :catch_65
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v5, "Error retrieving class information"

    invoke-direct {v4, v1, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v4

    .line 182
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6e
    move-exception v3

    .line 183
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v5, "Unable to retrieve application info from PackageManager"

    invoke-direct {v4, v1, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v4
.end method
