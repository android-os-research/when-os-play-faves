.class public Lcom/android/server/pm/ShortcutService$DumpFilter;
.super Ljava/lang/Object;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpFilter"
.end annotation


# instance fields
.field public mCheckInClear:Z

.field public mDumpCheckIn:Z

.field public mDumpDetails:Z

.field public mDumpFiles:Z

.field public mDumpMain:Z

.field public mDumpUid:Z

.field public mPackagePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4764
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 4765
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    const/4 v1, 0x1

    .line 4767
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 4768
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 4769
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 4771
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 4772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 4773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 2

    .line 4780
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    return-void
.end method

.method public addPackageRegex(Ljava/lang/String;)V
    .registers 2

    .line 4776
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUser(I)V
    .registers 2

    .line 4784
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isPackageMatch(Ljava/lang/String;)Z
    .registers 6

    .line 4788
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    move v2, v0

    .line 4791
    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 4792
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_27

    return v1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    return v0
.end method

.method public isUserMatch(I)Z
    .registers 6

    .line 4800
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    move v2, v0

    .line 4803
    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 4804
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_23

    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    return v0
.end method

.method public setCheckInClear(Z)V
    .registers 2

    .line 4824
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return-void
.end method

.method public setDumpCheckIn(Z)V
    .registers 2

    .line 4816
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return-void
.end method

.method public setDumpDetails(Z)V
    .registers 2

    .line 4856
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return-void
.end method

.method public setDumpFiles(Z)V
    .registers 2

    .line 4848
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return-void
.end method

.method public setDumpMain(Z)V
    .registers 2

    .line 4832
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return-void
.end method

.method public setDumpUid(Z)V
    .registers 2

    .line 4840
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return-void
.end method

.method public shouldCheckInClear()Z
    .registers 1

    .line 4820
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return p0
.end method

.method public shouldDumpCheckIn()Z
    .registers 1

    .line 4812
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return p0
.end method

.method public shouldDumpDetails()Z
    .registers 1

    .line 4852
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return p0
.end method

.method public shouldDumpFiles()Z
    .registers 1

    .line 4844
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return p0
.end method

.method public shouldDumpMain()Z
    .registers 1

    .line 4828
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return p0
.end method

.method public shouldDumpUid()Z
    .registers 1

    .line 4836
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return p0
.end method
