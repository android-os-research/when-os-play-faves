.class public abstract Landroid/test/ApplicationTestCase;
.super Landroid/test/AndroidTestCase;
.source "ApplicationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mApplicationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mCreated:Z

.field private mSystemContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    .local p1, "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 77
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 72
    iput-object p1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    .line 73
    return-void
.end method

.method private setupApplication()V
    .registers 3

    .line 102
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 104
    :try_start_3
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 107
    goto :goto_16

    .line 105
    :catch_10
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 109
    return-void
.end method


# virtual methods
.method protected final createApplication()V
    .registers 2

    .line 119
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertFalse(Z)V

    .line 121
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    if-nez v0, :cond_c

    .line 122
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 124
    :cond_c
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 128
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .registers 2

    .line 169
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 95
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->terminateApplication()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 157
    const-class v0, Landroid/test/ApplicationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ApplicationTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 159
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 160
    return-void
.end method

.method protected final terminateApplication()V
    .registers 2

    .line 136
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 139
    :cond_9
    return-void
.end method

.method public final testApplicationTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 179
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    const-string v1, "Application class could not be instantiated successfully"

    invoke-static {v1, v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method
