.class public abstract Landroid/test/ProviderTestCase2;
.super Landroid/test/AndroidTestCase;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ProviderTestCase2$MockContext2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/ContentProvider;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mProvider:Landroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mProviderAuthority:Ljava/lang/String;

.field mProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/test/IsolatedContext;

.field private mResolver:Landroid/test/mock/MockContentResolver;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "providerAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    .line 106
    iput-object p2, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 153
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    .line 154
    .local v0, "instance":Landroid/content/ContentProvider;, "TT;"
    new-instance v1, Landroid/content/pm/ProviderInfo;

    invoke-direct {v1}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 155
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iput-object p2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 156
    invoke-static {v0, p0, v1}, Landroid/test/mock/MockContentProvider;->attachInfoForTesting(Landroid/content/ContentProvider;Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 157
    return-object v0
.end method

.method public static newResolverWithContentProviderFromSql(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentResolver;
    .registers 11
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "filenamePrefix"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "databaseName"    # Ljava/lang/String;
    .param p5, "databaseVersion"    # I
    .param p6, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentResolver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 225
    .local p2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/test/mock/MockContentResolver;

    invoke-direct {v0}, Landroid/test/mock/MockContentResolver;-><init>()V

    .line 226
    .local v0, "resolver":Landroid/test/mock/MockContentResolver;
    new-instance v1, Landroid/test/RenamingDelegatingContext;

    new-instance v2, Landroid/test/mock/MockContext;

    invoke-direct {v2}, Landroid/test/mock/MockContext;-><init>()V

    invoke-direct {v1, v2, p0, p1}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    .local v1, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v2, Landroid/test/IsolatedContext;

    invoke-direct {v2, v0, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 231
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2, p4, p5, p6}, Landroid/database/DatabaseUtils;->createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    invoke-static {v2, p2, p3}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v3

    .line 234
    .local v3, "provider":Landroid/content/ContentProvider;, "TT;"
    invoke-virtual {v0, p3, v3}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    .line 236
    return-object v0
.end method


# virtual methods
.method public getMockContentResolver()Landroid/test/mock/MockContentResolver;
    .registers 2

    .line 179
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    return-object v0
.end method

.method public getMockContext()Landroid/test/IsolatedContext;
    .registers 2

    .line 187
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    return-object v0
.end method

.method public getProvider()Landroid/content/ContentProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    return-object v0
.end method

.method protected setUp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 134
    new-instance v0, Landroid/test/mock/MockContentResolver;

    invoke-direct {v0}, Landroid/test/mock/MockContentResolver;-><init>()V

    iput-object v0, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    .line 135
    const-string v0, "test."

    .line 136
    .local v0, "filenamePrefix":Ljava/lang/String;
    new-instance v1, Landroid/test/RenamingDelegatingContext;

    new-instance v2, Landroid/test/ProviderTestCase2$MockContext2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$MockContext2-IA;)V

    .line 140
    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "test."

    invoke-direct {v1, v2, v3, v4}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .local v1, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v2, Landroid/test/IsolatedContext;

    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    invoke-direct {v2, v3, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    .line 143
    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    iget-object v4, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v2

    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    .line 144
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getProvider()Landroid/content/ContentProvider;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    .line 145
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->shutdown()V

    .line 169
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 170
    return-void
.end method
