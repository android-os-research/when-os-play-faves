.class public final Lcom/android/server/infra/SecureSettingsServiceNameResolver;
.super Ljava/lang/Object;
.source "SecureSettingsServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "SecureSettingsServiceNamer: prop="

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .registers 4

    const-string v0, "defaultService="

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureSettingsServiceNameResolver["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
