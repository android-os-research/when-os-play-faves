.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationSettingObserver"
.end annotation


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 194
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "true"

    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p0, 0x1

    .line 197
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfputmIsBlocked(Z)V

    .line 198
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    goto :goto_2f

    :cond_1c
    const-string p1, "false"

    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    .line 200
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfputmIsBlocked(Z)V

    .line 201
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method
