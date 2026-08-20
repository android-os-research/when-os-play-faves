.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareImpl.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareImpl"


# instance fields
.field public final mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 100
    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    return-void
.end method

.method public constructor <init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .registers 10

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    .line 86
    :try_start_10
    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-direct {v5, v4, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;-><init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v4

    const-string v5, "SoundTriggerMiddlewareImpl"

    const-string v6, "Failed to add a SoundTriggerModule instance"

    .line 88
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_24
    new-array p1, v2, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    return-void
.end method


# virtual methods
.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 3

    .line 120
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    return-object p0
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    const/4 v1, 0x0

    .line 108
    :goto_6
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 109
    new-instance v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;-><init>()V

    .line 110
    iput v1, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    .line 111
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v3

    iput-object v3, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    .line 112
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return-object v0
.end method
