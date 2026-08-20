.class public Landroid/test/mock/MockAccountManager;
.super Ljava/lang/Object;
.source "MockAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;,
        Landroid/test/mock/MockAccountManager$MockAccountManagerImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static newMockAccountManager(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/test/mock/MockAccountManager$MockAccountManagerImpl;

    invoke-direct {v0, p0}, Landroid/test/mock/MockAccountManager$MockAccountManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
