.class public Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;
.super Landroid/os/ShellCommand;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 285
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 288
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "get"

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 311
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 291
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_23

    .line 293
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    return v1

    .line 297
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_70

    goto :goto_4f

    :sswitch_2d
    const-string v2, "apex_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_4f

    :cond_36
    const/4 v1, 0x2

    goto :goto_4f

    :sswitch_38
    const-string/jumbo v2, "module_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_4f

    :cond_42
    move v1, v4

    goto :goto_4f

    :sswitch_44
    const-string/jumbo v2, "image_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    :goto_4f
    packed-switch v1, :pswitch_data_7e

    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "ERROR: Unknown info type \'%s\'"

    .line 305
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 301
    :pswitch_60
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAllApexs()I

    move-result p0

    return p0

    .line 303
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAllModules()I

    move-result p0

    return p0

    .line 299
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printSignedImageInfo()I

    move-result p0

    return p0

    nop

    :sswitch_data_70
    .sparse-switch
        -0x5603eaee -> :sswitch_44
        -0x473c655f -> :sswitch_38
        0x5178b9ab -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method public onHelp()V
    .registers 1

    .line 337
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    return-void
.end method

.method public final printAllApexs()I
    .registers 12

    const-string v0, ""

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_17

    const-string p0, "ERROR: Failed to refresh info for APEXs."

    .line 168
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 171
    :cond_17
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_10f

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_10f

    :cond_31
    const/4 v2, 0x1

    const/4 v4, 0x0

    move v5, v4

    .line 176
    :goto_34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_59

    const-string v5, "-v"

    .line 177
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_57
    move v5, v2

    goto :goto_34

    .line 187
    :cond_59
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_6d

    const-string p0, "ERROR: Failed to obtain an instance of package manager."

    .line 189
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_6d
    const-string v3, "APEX Info:"

    .line 193
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7e
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 195
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v9, v9, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v9}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v9

    .line 198
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_7e

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Install location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last Update Time (ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :try_start_f1
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v6
    :try_end_f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f1 .. :try_end_f7} :catch_104

    const-string v7, "Is A Module: True"

    .line 213
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v6, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7e

    :catch_104
    const-string v6, "Is A Module: False"

    .line 209
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7e

    :cond_10e
    return v4

    :cond_10f
    :goto_10f
    const-string p0, "ERROR: Unable to obtain apex_info at this time."

    .line 172
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final printAllModules()I
    .registers 13

    const-string v0, ""

    .line 222
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_17

    const-string p0, "ERROR: Failed to refresh info for Modules."

    .line 228
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 231
    :cond_17
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_109

    :cond_31
    const/4 v2, 0x1

    const/4 v4, 0x0

    move v5, v4

    .line 236
    :goto_34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_59

    const-string v5, "-v"

    .line 237
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_57
    move v5, v2

    goto :goto_34

    .line 247
    :cond_59
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_6d

    const-string p0, "ERROR: Failed to obtain an instance of package manager."

    .line 249
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_6d
    const-string v3, "Module Info:"

    .line 253
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/high16 v3, 0x20000

    .line 254
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7c
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_108

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ModuleInfo;

    .line 255
    invoke-virtual {v6}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 257
    :try_start_8e
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object v10, v10, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v10}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v10

    .line 261
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_7c

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install location: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v6, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 267
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_e9} :catch_ea

    goto :goto_7c

    .line 270
    :catch_ea
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";ERROR:Unable to find PackageInfo for this module."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_7c

    .line 273
    invoke-virtual {p0, v6, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 274
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c

    :cond_108
    return v4

    :cond_109
    :goto_109
    const-string p0, "ERROR: Unable to obtain module_info at this time."

    .line 232
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final printHelpMenu()V
    .registers 3

    .line 316
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Transparency manager (transparency) commands:"

    .line 317
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    help"

    .line 318
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        Print this help text."

    .line 319
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 320
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    get image_info [-a]"

    .line 321
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        Print information about loaded image (firmware). Options:"

    .line 322
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "            -a: lists all other identifiable partitions."

    .line 323
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    get apex_info [-v]"

    .line 325
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        Print information about installed APEXs on device."

    .line 326
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "            -v: lists more verbose information about each APEX"

    .line 327
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    get module_info [-v]"

    .line 329
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        Print information about installed modules on device."

    .line 330
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "            -v: lists more verbose information about each module"

    .line 331
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V
    .registers 4

    const-string p0, "--- Module Details ---"

    .line 155
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Module name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Module visibility: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_31

    const-string/jumbo p1, "hidden"

    goto :goto_34

    :cond_31
    const-string/jumbo p1, "visible"

    :goto_34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printSignedImageInfo()I
    .registers 7

    .line 115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 119
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2c

    const-string v3, "-a"

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2a
    move v3, v1

    goto :goto_7

    .line 130
    :cond_2c
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Image Info:"

    .line 131
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 134
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_bd

    .line 137
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_5b

    const-string p0, "ERROR: Failed to obtain an instance of package manager."

    .line 139
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_5b
    const-string p0, "Other partitions:"

    .line 143
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/Build;->getFingerprintedPartitions()Ljava/util/List;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Build$Partition;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Build$Partition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Build$Partition;->getFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build time (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Build$Partition;->getBuildTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68

    :cond_bd
    return v2
.end method
