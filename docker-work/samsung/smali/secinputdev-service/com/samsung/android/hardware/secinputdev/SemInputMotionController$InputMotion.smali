.class Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
.super Ljava/lang/Object;
.source "SemInputMotionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMotion"
.end annotation


# static fields
.field private static final ERR_EXIST_CLIENT:I = -0x3

.field private static final ERR_NOT_EXIST_CLIENT:I = -0x2

.field private static final ERR_NOT_STARTED:I = -0x1


# instance fields
.field private final clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAvailable:Z

.field private object:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

.field private settingOn:Z

.field private final type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetclients(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->isAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->object:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->settingOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->isAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Lcom/samsung/android/hardware/secinputdev/SemInputMotion;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->object:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->settingOn:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->object:Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    .line 45
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->type:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->settingOn:Z

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->isAvailable:Z

    .line 48
    return-void
.end method


# virtual methods
.method public addToClients(Ljava/lang/String;)I
    .registers 4
    .param p1, "client"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 53
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 56
    :cond_18
    const/4 v1, -0x3

    monitor-exit v0

    return v1

    .line 57
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getClientsSize()I
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 85
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isExistClient(Ljava/lang/String;)Z
    .registers 5
    .param p1, "client"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 76
    monitor-exit v0

    return v2

    .line 78
    :cond_16
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 79
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public printClients(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "str":Ljava/lang/String;
    if-eqz p1, :cond_2e

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 94
    :cond_2e
    const-string v3, "SemInputMotionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "str":Ljava/lang/String;
    :goto_46
    goto :goto_9

    .line 97
    :cond_47
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public removeFromClients(Ljava/lang/String;)I
    .registers 5
    .param p1, "client"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_24

    .line 63
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 64
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 67
    :cond_21
    const/4 v1, -0x2

    monitor-exit v0

    return v1

    .line 69
    :cond_24
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 70
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
