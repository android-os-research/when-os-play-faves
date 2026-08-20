.class public Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "c"

.field private static d:Lb/c; = null

.field private static final e:I = 0x1

.field private static final f:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lb/c;->b:Landroid/app/ActivityManager;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lb/c;
    .registers 3

    const-class v0, Lb/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/c;->d:Lb/c;

    if-nez v1, :cond_e

    new-instance v1, Lb/c;

    invoke-direct {v1, p0}, Lb/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/c;->d:Lb/c;

    :cond_e
    sget-object p0, Lb/c;->d:Lb/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p0, "       "

    const-string v0, " "

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "  "

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lb/c;->c:Ljava/lang/String;

    const-string v0, "makeNativeLog : "

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<<<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ","

    const-string v3, ""

    if-eqz v1, :cond_71

    const-string v1, "x0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "r0"

    if-nez v4, :cond_31

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_71

    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_42

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v0, v1, :cond_71

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_71
    const-string v0, "#00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v1, "#09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v0, v1, :cond_b8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_c1

    goto :goto_c2

    :cond_c1
    move-object p0, v3

    :goto_c2
    return-object p0
.end method

.method private d(Lb/b;)V
    .registers 5

    new-instance p0, La/i;

    const-string v0, "APP"

    const-string v1, "FCNR"

    const-string v2, "ph"

    invoke-direct {p0, v0, v1, v2}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {p0, v1, v0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {p0, v1, v0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VER"

    invoke-virtual {p0, v1, v0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REASON"

    invoke-virtual {p0, v1, v0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STACK"

    invoke-virtual {p0, v0, p1}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, La/i;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 20

    move-object/from16 v0, p0

    const-string v1, ":"

    iget-object v2, v0, Lb/c;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_18

    sget-object v0, Lb/c;->c:Ljava/lang/String;

    const-string v1, "checkAppError: act is null"

    :goto_14
    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    sget-object v0, Lb/c;->c:Ljava/lang/String;

    const-string v1, "checkAppError: list is null"

    goto :goto_14

    :cond_23
    iget-object v3, v0, Lb/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x64

    const/16 v5, 0x384

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v6, "none"

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v11, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    if-eqz v11, :cond_47

    move-object v6, v11

    :cond_47
    const/4 v11, 0x0

    if-eqz v3, :cond_66

    :try_start_4a
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_57

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    goto :goto_58

    :cond_57
    move-object v12, v6

    :goto_58
    invoke-virtual {v3, v12, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v8, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    sget-object v12, Lb/c;->c:Ljava/lang/String;

    const-string v13, "checkAppError: app version invalid"

    invoke-static {v12, v13}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    :goto_66
    iget-object v12, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    const-string v13, "\'"

    const-string v14, "\""

    if-eqz v12, :cond_7e

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v4, :cond_7e

    const/16 v12, 0x63

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7e
    iget-object v12, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    if-eqz v12, :cond_a6

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "\\s"

    const-string v13, " "

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "Native crash"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    invoke-direct {v0, v9}, Lb/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_9a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v5, :cond_a6

    const/16 v12, 0x383

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_a6
    sget-object v11, Lb/c;->c:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "condition : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", processName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", short msg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", ver : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", stack : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lb/b;

    iget v13, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/16 v18, 0x0

    move-object v12, v11

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v18}, Lb/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/a;)V

    invoke-direct {v0, v11}, Lb/c;->d(Lb/b;)V

    goto/16 :goto_36

    :cond_f7
    return-void
.end method
