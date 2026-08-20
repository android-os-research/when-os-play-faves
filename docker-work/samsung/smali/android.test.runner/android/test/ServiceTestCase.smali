.class public abstract Landroid/test/ServiceTestCase;
.super Landroid/test/AndroidTestCase;
.source "ServiceTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mService:Landroid/app/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceAttached:Z

.field private mServiceBound:Z

.field mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mServiceCreated:Z

.field private mServiceId:I

.field private mServiceIntent:Landroid/content/Intent;

.field private mServiceStarted:Z

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

    .line 114
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 120
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 121
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 122
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 115
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    .line 116
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 232
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v0, :cond_7

    .line 233
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 235
    :cond_7
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 237
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 238
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 239
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 242
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 245
    .local v0, "result":Landroid/os/IBinder;
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 246
    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    .line 314
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .registers 2

    .line 324
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .line 303
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    .line 304
    return-void
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 146
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method protected setupService()V
    .registers 5

    .line 158
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 160
    :try_start_3
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 163
    goto :goto_14

    .line 161
    :catch_e
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_22

    .line 165
    new-instance v0, Landroid/test/mock/MockApplication;

    invoke-direct {v0}, Landroid/test/mock/MockApplication;-><init>()V

    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->setApplication(Landroid/app/Application;)V

    .line 167
    :cond_22
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 168
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 167
    invoke-static {v0, v1, v2, v3}, Landroid/test/mock/MockService;->attachForTesting(Landroid/app/Service;Landroid/content/Context;Ljava/lang/String;Landroid/app/Application;)V

    .line 170
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 174
    return-void
.end method

.method protected shutdownService()V
    .registers 4

    .line 255
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 257
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    goto :goto_1a

    .line 258
    :cond_d
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    if-eqz v0, :cond_1a

    .line 259
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    iget-object v2, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 260
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 262
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-eqz v0, :cond_25

    .line 263
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 264
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 266
    :cond_25
    return-void
.end method

.method protected startService(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 187
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v0, :cond_7

    .line 188
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 190
    :cond_7
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 192
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 193
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 194
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 196
    :cond_18
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    const/4 v2, 0x0

    iget v3, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    invoke-virtual {v0, p1, v2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 198
    iput-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 199
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->shutdownService()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 289
    const-class v0, Landroid/test/ServiceTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 291
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 292
    return-void
.end method

.method public testServiceTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 336
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    const-string v1, "service should be launched successfully"

    invoke-static {v1, v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void
.end method
