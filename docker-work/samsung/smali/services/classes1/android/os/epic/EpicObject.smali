.class public final Landroid/os/epic/EpicObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "EpicObject.java"


# static fields
.field public static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

.field public static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

.field public static final TAG:Ljava/lang/String; = "EpicObject"

.field public static m_epic_getservice_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_handle_cls:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static m_epic_hint_release_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_init_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_init_multi_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_perf_hint_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_release_conditional_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_release_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_cls:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static m_epic_request_conditional_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_opt_func:Ljava/lang/reflect/Method; = null

.field public static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method; = null

.field public static m_has_load:Z = false


# instance fields
.field public m_handle_obj:Ljava/lang/Object;

.field public m_request_obj:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Landroid/os/epic/EpicObject;->create_instance()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .line 60
    invoke-direct {p0}, Landroid/os/epic/EpicObject;-><init>()V

    .line 62
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v0, :cond_29

    sget-object v0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_c

    goto :goto_29

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    new-array v3, v2, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_29

    .line 69
    sget-object v1, Landroid/os/epic/EpicObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    :goto_29
    return-void
.end method

.method public constructor <init>([I)V
    .registers 6

    .line 79
    invoke-direct {p0}, Landroid/os/epic/EpicObject;-><init>()V

    .line 81
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    if-eqz v0, :cond_3c

    sget-object v0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    if-nez v0, :cond_c

    goto :goto_3c

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    new-array v3, v2, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v0, :cond_3c

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 89
    :goto_1e
    array-length v3, p1

    if-ge v1, v3, :cond_2d

    .line 90
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 92
    :cond_2d
    sget-object p1, Landroid/os/epic/EpicObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public acquire_lock()Z
    .registers 6

    .line 105
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_20

    .line 110
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_20

    if-eqz p0, :cond_20

    move v1, v3

    :catch_20
    :cond_20
    :goto_20
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .registers 6

    .line 193
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_23

    .line 198
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_23

    if-eqz p1, :cond_23

    move v1, p0

    :catch_23
    :cond_23
    :goto_23
    return v1
.end method

.method public acquire_lock_option(II)Z
    .registers 7

    .line 145
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_2e

    .line 150
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2e

    if-eqz p0, :cond_2e

    move v1, p1

    :catch_2e
    :cond_2e
    :goto_2e
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .registers 7

    .line 164
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_52

    .line 169
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 170
    :goto_10
    array-length v3, p1

    if-ge v2, v3, :cond_1f

    .line 171
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 174
    :cond_1f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 175
    :goto_25
    array-length v3, p2

    if-ge v2, v3, :cond_34

    .line 176
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 179
    :cond_34
    sget-object p2, Landroid/os/epic/EpicObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4f} :catch_52

    if-eqz p1, :cond_52

    move v1, p0

    :catch_52
    :cond_52
    :goto_52
    return v1
.end method

.method public final create_instance()V
    .registers 16

    .line 269
    const-class p0, Ljava/lang/String;

    const-class v0, Landroid/os/epic/EpicObject;

    monitor-enter v0

    .line 271
    :try_start_5
    sget-boolean v1, Landroid/os/epic/EpicObject;->m_has_load:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_dd
    .catchall {:try_start_5 .. :try_end_7} :catchall_db

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 272
    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_db

    return-void

    :cond_c
    :try_start_c
    const-string/jumbo v1, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicRequest"

    .line 274
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "vendor.samsung_slsi.hardware.epic.V1_0.IEpicHandle"

    .line 275
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/epic/EpicObject;->m_epic_handle_cls:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Class;

    .line 278
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    new-array v7, v2, [Ljava/lang/Class;

    .line 279
    const-class v8, Ljava/util/ArrayList;

    aput-object v8, v7, v3

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v1, v8, v3

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v1, v9, v3

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v1, v11, v3

    aput-object v6, v11, v2

    const/4 v12, 0x2

    aput-object v6, v11, v12

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v1, v6, v3

    .line 283
    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v6, v2

    const-class v10, Ljava/util/ArrayList;

    aput-object v10, v6, v12

    new-array v10, v12, [Ljava/lang/Class;

    aput-object v1, v10, v3

    aput-object p0, v10, v2

    new-array v13, v12, [Ljava/lang/Class;

    aput-object v1, v13, v3

    aput-object p0, v13, v2

    new-array v14, v12, [Ljava/lang/Class;

    aput-object v1, v14, v3

    aput-object p0, v14, v2

    new-array v12, v12, [Ljava/lang/Class;

    aput-object v1, v12, v3

    aput-object p0, v12, v2

    .line 289
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "getService"

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_getservice_func:Ljava/lang/reflect/Method;

    .line 290
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "init"

    invoke-virtual {p0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    .line 291
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "init_multi"

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    .line 292
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v1, "acquire_lock"

    invoke-virtual {p0, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    .line 293
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "release_lock"

    invoke-virtual {p0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    .line 294
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v1, "acquire_lock_option"

    invoke-virtual {p0, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    .line 295
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v1, "acquire_lock_multi_option"

    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    .line 296
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string v1, "acquire_lock_conditional"

    invoke-virtual {p0, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    .line 297
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "release_lock_conditional"

    invoke-virtual {p0, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    .line 298
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "perf_hint"

    invoke-virtual {p0, v1, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    .line 299
    sget-object p0, Landroid/os/epic/EpicObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v1, "hint_release"

    invoke-virtual {p0, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/os/epic/EpicObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    .line 301
    sput-boolean v2, Landroid/os/epic/EpicObject;->m_has_load:Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_da} :catch_dd
    .catchall {:try_start_c .. :try_end_da} :catchall_db

    goto :goto_dd

    :catchall_db
    move-exception p0

    goto :goto_df

    .line 305
    :catch_dd
    :goto_dd
    :try_start_dd
    monitor-exit v0

    return-void

    :goto_df
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_db

    throw p0
.end method

.method public hint_release(Ljava/lang/String;)Z
    .registers 6

    .line 252
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_23

    .line 257
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_23

    if-eqz p1, :cond_23

    move v1, p0

    :catch_23
    :cond_23
    :goto_23
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .registers 6

    .line 232
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_23

    .line 237
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_23

    if-eqz p1, :cond_23

    move v1, p0

    :catch_23
    :cond_23
    :goto_23
    return v1
.end method

.method public release_lock()Z
    .registers 6

    .line 125
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_20

    .line 130
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_20

    if-eqz p0, :cond_20

    move v1, v3

    :catch_20
    :cond_20
    :goto_20
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .registers 6

    .line 212
    sget-boolean v0, Landroid/os/epic/EpicObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/epic/EpicObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_23

    .line 217
    :cond_a
    :try_start_a
    sget-object v2, Landroid/os/epic/EpicObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Landroid/os/epic/EpicObject;->m_handle_obj:Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_23

    if-eqz p1, :cond_23

    move v1, p0

    :catch_23
    :cond_23
    :goto_23
    return v1
.end method
