.class public abstract Landroid/test/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ActivityUnitTestCase$MockParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUnitTestCase"


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mActivityContext:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private mAttached:Z

.field private mCreated:Z

.field private mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;


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

    .line 93
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 91
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    .line 94
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    .line 95
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFinishedActivityRequest()I
    .registers 2

    .line 260
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_7

    .line 261
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    return v0

    .line 263
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedOrientation()I
    .registers 2

    .line 209
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_7

    .line 210
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    return v0

    .line 212
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getStartedActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 222
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    return-object v0

    .line 225
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartedActivityRequest()I
    .registers 2

    .line 234
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_7

    .line 235
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    return v0

    .line 237
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public isFinishCalled()Z
    .registers 2

    .line 248
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_7

    .line 249
    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    return v0

    .line 251
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "activityContext"    # Landroid/content/Context;

    .line 201
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 202
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .line 192
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    .line 193
    return-void
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 107
    invoke-virtual {p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 132
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    const-string v2, "Activity already created"

    invoke-static {v2, v0}, Landroid/test/ActivityUnitTestCase;->assertFalse(Ljava/lang/String;Z)V

    .line 134
    iget-boolean v0, v1, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    const/4 v2, 0x1

    if-nez v0, :cond_80

    .line 135
    iget-object v0, v1, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 137
    const/4 v3, 0x0

    .line 139
    .local v3, "newActivity":Landroid/app/Activity;, "TT;"
    const/4 v15, 0x0

    .line 140
    .local v15, "token":Landroid/os/IBinder;
    :try_start_19
    iget-object v4, v1, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    if-nez v4, :cond_25

    .line 141
    new-instance v4, Landroid/test/mock/MockApplication;

    invoke-direct {v4}, Landroid/test/mock/MockApplication;-><init>()V

    invoke-virtual {v1, v4}, Landroid/test/ActivityUnitTestCase;->setApplication(Landroid/app/Application;)V

    .line 143
    :cond_25
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    .line 144
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    .line 145
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v13, p1

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 147
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v4, Landroid/test/ActivityUnitTestCase$MockParent;

    invoke-direct {v4, v0}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>(Landroid/test/ActivityUnitTestCase$MockParent-IA;)V

    iput-object v4, v1, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    iget-object v5, v1, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    iget-object v6, v1, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    iget-object v8, v1, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    iget-object v12, v1, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    move-object v7, v15

    move-object/from16 v9, p1

    move-object v13, v0

    move-object/from16 v16, v14

    .end local v14    # "cn":Landroid/content/ComponentName;
    .local v16, "cn":Landroid/content/ComponentName;
    move-object/from16 v14, p3

    invoke-virtual/range {v4 .. v14}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6b} :catch_6d

    move-object v3, v4

    .line 157
    .end local v0    # "id":Ljava/lang/String;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "token":Landroid/os/IBinder;
    .end local v16    # "cn":Landroid/content/ComponentName;
    goto :goto_78

    .line 154
    :catch_6d
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ActivityUnitTestCase"

    const-string v5, "Catching exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-static {v3}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_78
    invoke-static {v3}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v1, v3}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 162
    iput-boolean v2, v1, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 165
    .end local v3    # "newActivity":Landroid/app/Activity;, "TT;"
    :cond_80
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    .local v0, "result":Landroid/app/Activity;, "TT;"
    if-eqz v0, :cond_96

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 168
    iput-boolean v2, v1, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    goto :goto_98

    .line 166
    :cond_96
    move-object/from16 v5, p2

    .line 170
    :goto_98
    return-object v0
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 181
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 183
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 184
    return-void
.end method
