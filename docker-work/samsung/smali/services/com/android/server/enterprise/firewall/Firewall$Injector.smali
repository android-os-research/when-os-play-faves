.class Lcom/android/server/enterprise/firewall/Firewall$Injector;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mCtx:Landroid/content/Context;

.field public mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method public getDomainFilter()Lcom/android/server/enterprise/firewall/DomainFilter;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    return-object p0
.end method

.method public getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-object p0
.end method

.method public getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object p0
.end method

.method public initInjector(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 4

    .line 174
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 175
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 176
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 177
    new-instance p1, Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    return-void
.end method
