.class public final Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageCompatState"
.end annotation


# instance fields
.field public final maxVersionCode:J

.field public final urlBarResourceIds:[Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmaxVersionCode(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgeturlBarResourceIds(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(J[Ljava/lang/String;)V
    .registers 4

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-wide p1, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    .line 940
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maxVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", urlBarResourceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    .line 946
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
