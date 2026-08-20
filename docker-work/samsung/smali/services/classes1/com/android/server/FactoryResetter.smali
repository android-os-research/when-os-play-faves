.class public final Lcom/android/server/FactoryResetter;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# static fields
.field public static final sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Provides only static methods"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFactoryResetting()Z
    .registers 1

    .line 37
    sget-object v0, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setFactoryResetting(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.permission.MASTER_CLEAR"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_b

    move p0, v0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 48
    sget-object p0, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
