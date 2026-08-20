.class public La/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Landroid/content/Context; = null

.field private static e:La/c; = null

.field private static final f:Ljava/lang/String; = "android.intent.extra.REASON"


# instance fields
.field private a:Ljava/util/ArrayList;

.field b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, La/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, La/c;->d:Landroid/content/Context;

    sput-object v0, La/c;->e:La/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/c;->a:Ljava/util/ArrayList;

    new-instance v0, La/a;

    invoke-direct {v0, p0}, La/a;-><init>(La/c;)V

    iput-object v0, p0, La/c;->b:Landroid/content/BroadcastReceiver;

    sput-object p1, La/c;->d:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, La/c;->n()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, La/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(La/c;)Z
    .registers 1

    invoke-direct {p0}, La/c;->e()Z

    move-result p0

    return p0
.end method

.method private e()Z
    .registers 5

    :try_start_0
    iget-object v0, p0, La/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b;

    iget-boolean v2, v1, La/b;->d:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    iget-object v2, v1, La/b;->a:Ljava/lang/String;

    iget-object v3, v1, La/b;->b:Ljava/lang/String;

    iget-object v1, v1, La/b;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, La/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_21
    iget-object v2, v1, La/b;->a:Ljava/lang/String;

    iget-object v1, v1, La/b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, La/c;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_6

    :catch_29
    move-exception p0

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    sget-object p0, La/c;->c:Ljava/lang/String;

    const-string v0, "backupLog"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private f()Z
    .registers 2

    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/HWParamTime.bin"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "none"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, La/c;->c:Ljava/lang/String;

    const-string v3, "CopyDir"

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Directory is not exist : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p2}, La/c;->m(Ljava/lang/String;)Z

    const-string v2, "*"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    move p3, v3

    goto :goto_46

    :cond_3f
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 p3, 0x1

    :goto_46
    array-length v2, v0

    move v4, v3

    :goto_48
    if-ge v4, v2, :cond_54

    aget-object v5, v0, v4

    sget-object v6, La/c;->c:Ljava/lang/String;

    invoke-static {v6, v5}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_54
    if-eqz v1, :cond_b0

    array-length v2, v1

    move v4, v3

    :goto_58
    if-ge v4, v2, :cond_b0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    array-length v6, v0

    move v7, v3

    :goto_62
    if-ge v7, v6, :cond_92

    aget-object v8, v0, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6e

    if-nez p3, :cond_8f

    :cond_6e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, La/c;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_8f} :catch_95

    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :catch_95
    move-exception p0

    sget-object p1, La/c;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "copyDir : e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "close file : e = "

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    sget-object p0, La/c;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not exist : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_f0
    .catchall {:try_start_25 .. :try_end_2a} :catchall_ea

    :try_start_2a
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_e5
    .catchall {:try_start_2a .. :try_end_2f} :catchall_e0

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_dd
    .catchall {:try_start_2f .. :try_end_33} :catchall_da

    :try_start_33
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz p2, :cond_54

    if-eqz v0, :cond_54

    const-wide/16 v3, 0x0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p2

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_54

    sget-object v2, La/c;->c:Ljava/lang/String;

    const-string v3, "Negative number of bytes returned!!!"

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_54} :catch_d5
    .catchall {:try_start_33 .. :try_end_54} :catchall_cf

    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_71

    :catch_58
    move-exception v1

    sget-object v2, La/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    :try_start_71
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_8e

    :catch_75
    move-exception p1

    sget-object v1, La/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    if-eqz p2, :cond_ad

    :try_start_90
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_ad

    :catch_94
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    :goto_ad
    if-eqz v0, :cond_17b

    :try_start_af
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b4

    goto/16 :goto_17b

    :catch_b4
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_bc
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17b

    :catchall_cf
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_17d

    :catch_d5
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_f4

    :catchall_da
    move-exception v2

    move-object p2, v0

    goto :goto_e3

    :catch_dd
    move-exception v2

    move-object p2, v0

    goto :goto_e8

    :catchall_e0
    move-exception v2

    move-object p1, v0

    move-object p2, p1

    :goto_e3
    move-object v0, v1

    goto :goto_ed

    :catch_e5
    move-exception v2

    move-object p1, v0

    move-object p2, p1

    :goto_e8
    move-object v0, v1

    goto :goto_f3

    :catchall_ea
    move-exception v2

    move-object p1, v0

    move-object p2, p1

    :goto_ed
    move-object v1, p2

    goto/16 :goto_17d

    :catch_f0
    move-exception v2

    move-object p1, v0

    move-object p2, p1

    :goto_f3
    move-object v1, p2

    :goto_f4
    :try_start_f4
    sget-object v3, La/c;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFile : e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_f4 .. :try_end_10e} :catchall_17c

    if-eqz v0, :cond_12d

    :try_start_110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_12d

    :catch_114
    move-exception v0

    sget-object v2, La/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12d
    :goto_12d
    if-eqz p1, :cond_14c

    :try_start_12f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_133

    goto :goto_14c

    :catch_133
    move-exception p1

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    :goto_14c
    if-eqz p2, :cond_16b

    :try_start_14e
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_16b

    :catch_152
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16b
    :goto_16b
    if-eqz v1, :cond_17b

    :try_start_16d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_171

    goto :goto_17b

    :catch_171
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_bc

    :cond_17b
    :goto_17b
    return-void

    :catchall_17c
    move-exception v2

    :goto_17d
    if-eqz v0, :cond_19c

    :try_start_17f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_182} :catch_183

    goto :goto_19c

    :catch_183
    move-exception v0

    sget-object v3, La/c;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19c
    :goto_19c
    if-eqz p1, :cond_1bb

    :try_start_19e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1bb

    :catch_1a2
    move-exception p1

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bb
    :goto_1bb
    if-eqz p2, :cond_1da

    :try_start_1bd
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    goto :goto_1da

    :catch_1c1
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1da
    :goto_1da
    if-eqz v1, :cond_1f9

    :try_start_1dc
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1df} :catch_1e0

    goto :goto_1f9

    :catch_1e0
    move-exception p1

    sget-object p2, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f9
    :goto_1f9
    throw v2
.end method

.method private i(Ljava/lang/String;)I
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, La/c;->c:Ljava/lang/String;

    const-string v1, "delete Dir"

    invoke-static {p1, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, -0x1

    return p0

    :cond_14
    invoke-direct {p0, v0}, La/c;->j(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private j(Ljava/io/File;)I
    .registers 9

    sget-object v0, La/c;->c:Ljava/lang/String;

    const-string v1, "delete file"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_60

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_18

    return v0

    :cond_18
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_36

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-direct {p0, v5}, La/c;->j(Ljava/io/File;)I

    goto :goto_33

    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, La/c;->c:Ljava/lang/String;

    invoke-static {v5, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_36
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_43

    sget-object p0, La/c;->c:Ljava/lang/String;

    const-string p1, "delete filePath"

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_43} :catch_45

    :cond_43
    const/4 p0, 0x1

    return p0

    :catch_45
    move-exception p0

    sget-object p1, La/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDirFile : e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return v0
.end method

.method private k(Ljava/lang/String;)I
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, La/c;->c:Ljava/lang/String;

    const-string v0, "delete file"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, -0x1

    return p0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized l(Landroid/content/Context;)La/c;
    .registers 3

    const-class v0, La/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/c;->e:La/c;

    if-nez v1, :cond_e

    new-instance v1, La/c;

    invoke-direct {v1, p0}, La/c;-><init>(Landroid/content/Context;)V

    sput-object v1, La/c;->e:La/c;

    :cond_e
    sget-object p0, La/c;->e:La/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private m(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "directory exist"

    :goto_2e
    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_32
    const-string p1, "directory not exist"

    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "directory created"

    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_62

    :cond_44
    const-string p1, "fail to create dir"
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_47

    goto :goto_2e

    :catch_47
    move-exception p1

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    return p0
.end method

.method private n()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, La/c;->d:Landroid/content/Context;

    iget-object v1, p0, La/c;->b:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private o()Z
    .registers 9

    invoke-direct {p0}, La/c;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    sget-object p0, La/c;->c:Ljava/lang/String;

    const-string v0, "not fr"

    :goto_b
    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const/4 v2, -0x1

    :try_start_10
    iget-object v3, p0, La/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b;

    iget-boolean v5, v4, La/b;->d:Z

    const/4 v6, 0x1

    if-nez v5, :cond_3c

    if-ne v0, v6, :cond_16

    iget-object v5, v4, La/b;->c:Ljava/lang/String;

    invoke-direct {p0, v5}, La/c;->m(Ljava/lang/String;)Z

    iget-object v5, v4, La/b;->b:Ljava/lang/String;

    iget-object v6, v4, La/b;->c:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, La/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, La/b;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, La/c;->k(Ljava/lang/String;)I

    move-result v2

    goto :goto_16

    :cond_3c
    if-ne v0, v6, :cond_16

    iget-object v5, v4, La/b;->b:Ljava/lang/String;

    iget-object v6, v4, La/b;->c:Ljava/lang/String;

    const-string v7, "*"

    invoke-direct {p0, v5, v6, v7}, La/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, La/b;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, La/c;->i(Ljava/lang/String;)I

    move-result v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4d} :catch_4e

    goto :goto_16

    :catch_4e
    move-exception p0

    sget-object v0, La/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    sget-object p0, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreLog "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object p0, p0, La/c;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_33

    new-instance v0, La/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, La/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add backup file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 14

    iget-object p0, p0, La/c;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_37

    new-instance v7, La/b;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;La/a;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, La/c;->c:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "add backup file : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public p()Z
    .registers 1

    invoke-direct {p0}, La/c;->o()Z

    move-result p0

    return p0
.end method

.method public q(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    sget-object p1, La/c;->c:Ljava/lang/String;

    const-string v0, "backup test"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/c;->e()Z

    goto :goto_1b

    :cond_e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    sget-object p1, La/c;->c:Ljava/lang/String;

    const-string v0, "restore test"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/c;->o()Z

    :cond_1b
    :goto_1b
    return-void
.end method
