.class public Lcom/android/commands/uiautomator/RunTestCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "RunTestCommand.java"


# static fields
.field private static final ARG_FAIL_INCOMPLETE_C:I = -0x2

.field private static final ARG_FAIL_INCOMPLETE_E:I = -0x1

.field private static final ARG_FAIL_NO_CLASS:I = -0x3

.field private static final ARG_FAIL_RUNNER:I = -0x4

.field private static final ARG_FAIL_UNSUPPORTED:I = -0x63

.field private static final ARG_OK:I = 0x0

.field private static final CLASS_PARAM:Ljava/lang/String; = "class"

.field private static final CLASS_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final JARS_PARAM:Ljava/lang/String; = "jars"

.field private static final JARS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final OUTPUT_FORMAT_KEY:Ljava/lang/String; = "outputFormat"

.field private static final OUTPUT_SIMPLE:Ljava/lang/String; = "simple"

.field private static final RUNNER_PARAM:Ljava/lang/String; = "runner"


# instance fields
.field private mDebug:Z

.field private mMonkey:Z

.field private final mParams:Landroid/os/Bundle;

.field private mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

.field private mRunnerClassName:Ljava/lang/String;

.field private final mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/commands/uiautomator/RunTestCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    const-string v0, "runtest"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    .line 63
    return-void
.end method

.method private addTestClasses(Ljava/lang/String;)V
    .registers 7
    .param p1, "classes"    # Ljava/lang/String;

    .line 181
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "classArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 183
    .local v3, "clazz":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v3    # "clazz":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 185
    :cond_14
    return-void
.end method

.method private addTestClassesFromJars()V
    .registers 12

    .line 192
    iget-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    const-string v1, "jars"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "jars":Ljava/lang/String;
    if-nez v0, :cond_b

    return-void

    .line 195
    :cond_b
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "jarFileNames":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_63

    aget-object v5, v1, v4

    .line 197
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_60

    .line 200
    :cond_23
    :try_start_23
    new-instance v6, Ldalvik/system/DexFile;

    invoke-direct {v6, v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 201
    .local v6, "dexFile":Ldalvik/system/DexFile;
    invoke-virtual {v6}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 202
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 203
    .local v8, "className":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/uiautomator/RunTestCommand;->isTestClass(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 204
    iget-object v9, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v8    # "className":Ljava/lang/String;
    :cond_43
    goto :goto_2c

    .line 207
    .end local v7    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_44
    invoke-virtual {v6}, Ldalvik/system/DexFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_47} :catch_48

    .line 210
    .end local v6    # "dexFile":Ldalvik/system/DexFile;
    goto :goto_60

    .line 208
    :catch_48
    move-exception v6

    .line 209
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "Could not read %s: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 212
    :cond_63
    return-void
.end method

.method private isTestClass(Ljava/lang/String;)Z
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 223
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_14

    return v0

    .line 224
    :cond_14
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;->accept(Ljava/lang/Class;)Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_20} :catch_21

    return v0

    .line 225
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_21
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return v0
.end method

.method private parseArgs([Ljava/lang/String;)I
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_96

    .line 106
    aget-object v1, p1, v0

    const-string v3, "-e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_57

    .line 107
    add-int/lit8 v1, v0, 0x2

    array-length v4, p1

    if-ge v1, v4, :cond_55

    .line 108
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    .line 109
    .local v1, "key":Ljava/lang/String;
    add-int/2addr v0, v3

    aget-object v4, p1, v0

    .line 110
    .local v4, "value":Ljava/lang/String;
    const-string v5, "class"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 111
    invoke-direct {p0, v4}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    goto :goto_54

    .line 112
    :cond_28
    const-string v5, "debug"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 113
    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_40
    move v2, v3

    :cond_41
    iput-boolean v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    goto :goto_54

    .line 114
    :cond_44
    const-string v2, "runner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 115
    iput-object v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    goto :goto_54

    .line 117
    :cond_4f
    iget-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_54
    goto :goto_90

    .line 120
    :cond_55
    const/4 v1, -0x1

    return v1

    .line 122
    :cond_57
    aget-object v1, p1, v0

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 123
    add-int/lit8 v1, v0, 0x1

    array-length v2, p1

    if-ge v1, v2, :cond_6e

    .line 124
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    goto :goto_90

    .line 126
    :cond_6e
    const/4 v1, -0x2

    return v1

    .line 128
    :cond_70
    aget-object v1, p1, v0

    const-string v2, "--monkey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 129
    iput-boolean v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    goto :goto_90

    .line 130
    :cond_7d
    aget-object v1, p1, v0

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 131
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    const-string v2, "outputFormat"

    const-string v4, "simple"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_90
    add-int/2addr v0, v3

    goto/16 :goto_1

    .line 133
    :cond_93
    const/16 v1, -0x63

    return v1

    .line 136
    .end local v0    # "i":I
    :cond_96
    return v2
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .registers 2

    .line 232
    const-string v0, "    runtest <class spec> [options]\n    <class spec>: <JARS> < -c <CLASSES> | -e class <CLASSES> >\n      <JARS>: a list of jar files containing test classes and dependencies. If\n        the path is relative, it\'s assumed to be under /data/local/tmp. Use\n        absolute path if the file is elsewhere. Multiple files can be\n        specified, separated by space.\n      <CLASSES>: a list of test class names to run, separated by comma. To\n        a single method, use TestClass#testMethod format. The -e or -c option\n        may be repeated. This option is not required and if not provided then\n        all the tests in provided jars will be run automatically.\n    options:\n      --nohup: trap SIG_HUP, so test won\'t terminate even if parent process\n               is terminated, e.g. USB is disconnected.\n      -e debug [true|false]: wait for debugger to connect before starting.\n      -e runner [CLASS]: use specified test runner class instead. If\n        unspecified, framework default runner will be used.\n      -e <NAME> <VALUE>: other name-value pairs to be passed to test classes.\n        May be repeated.\n      -e outputFormat simple | -s: enabled less verbose JUnit style output.\n"

    return-object v0
.end method

.method protected getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .registers 7

    .line 140
    iget-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    if-eqz v0, :cond_5

    .line 141
    return-object v0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 145
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 146
    return-object v0

    .line 149
    :cond_11
    const/4 v1, 0x0

    .line 151
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, -0x4

    :try_start_13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1b} :catch_61
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1b} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1b} :catch_1d

    move-object v1, v3

    .line 162
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1c
    goto :goto_80

    .line 159
    :catch_1d
    move-exception v0

    .line 160
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor of runner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not accessibile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_80

    .line 156
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_42
    move-exception v0

    .line 157
    .local v0, "ie":Ljava/lang/InstantiationException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .end local v0    # "ie":Ljava/lang/InstantiationException;
    goto :goto_1c

    .line 153
    :catch_61
    move-exception v0

    .line 154
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    goto :goto_1c

    .line 164
    :goto_80
    :try_start_80
    move-object v0, v1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 165
    .local v0, "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_80 .. :try_end_85} :catch_86

    .line 166
    return-object v0

    .line 167
    .end local v0    # "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :catch_86
    move-exception v0

    .line 168
    .local v0, "cce":Ljava/lang/ClassCastException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified runner is not subclass of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 169
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 173
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/RunTestCommand;->parseArgs([Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "ret":I
    sparse-switch v0, :sswitch_data_5c

    goto :goto_2d

    .line 74
    :sswitch_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-e\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 76
    goto :goto_2d

    .line 70
    :sswitch_14
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-c\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 72
    goto :goto_2d

    .line 78
    :sswitch_20
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unsupported standalone parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/16 v1, -0x63

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 80
    nop

    .line 84
    :goto_2d
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 85
    invoke-direct {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClassesFromJars()V

    .line 86
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 87
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "No test classes found."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 91
    :cond_4b
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    iget-boolean v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;ZZ)V

    .line 92
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x63 -> :sswitch_20
        -0x2 -> :sswitch_14
        -0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 255
    const-string v0, "executes UI automation tests"

    return-object v0
.end method
