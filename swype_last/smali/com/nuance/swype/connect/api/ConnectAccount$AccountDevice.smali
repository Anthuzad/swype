.class public Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
.super Ljava/lang/Object;
.source "ConnectAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;,
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25413a6c6739ebL


# instance fields
.field private deviceId:Ljava/lang/String;

.field private isThisDevice:Z

.field private lastCheckin:J

.field private name:Ljava/lang/String;

.field private status:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

.field private type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;)V
    .registers 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lastCheckin"    # J
    .param p5, "isThisDevice"    # Z
    .param p6, "type"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    .line 496
    iput-wide p3, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->lastCheckin:J

    .line 497
    iput-boolean p5, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->isThisDevice:Z

    .line 498
    iput-object p2, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    .line 499
    iput-object p6, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .line 500
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->status:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    .line 501
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->status:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method

.method public getIsThisDevice()Z
    .registers 2

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->isThisDevice:Z

    return v0
.end method

.method public getLastCheckin()J
    .registers 3

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->lastCheckin:J

    return-wide v0
.end method

.method public getLastCheckinDaysAgo()I
    .registers 5

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinDiff()J
    .registers 7

    .prologue
    .line 571
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 572
    .local v0, "c":Ljava/util/Calendar;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 573
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->lastCheckin:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 576
    .local v1, "cNow":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 577
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getLastCheckinHoursAgo()I
    .registers 5

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinMinutesAgo()I
    .registers 5

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public isDeleted()Z
    .registers 3

    .prologue
    .line 559
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->status:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markAsDeleted()V
    .registers 2

    .prologue
    .line 551
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->status:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    .line 552
    return-void
.end method

.method public setIsThisDevice(Z)V
    .registers 2
    .param p1, "isThisDevice"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->isThisDevice:Z

    .line 632
    return-void
.end method

.method public setLastCheckin(J)V
    .registers 4
    .param p1, "checkin"    # J

    .prologue
    .line 547
    iput-wide p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->lastCheckin:J

    .line 548
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setType(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;)V
    .registers 2
    .param p1, "type"    # Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .line 524
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 648
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "AccountDevice [ id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin timestamp: "

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 651
    iget-wide v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->lastCheckin:J

    .line 652
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin diff: "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 655
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin days: "

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinDaysAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin hours: "

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinHoursAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nlastCheckin minutes: "

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckinMinutesAgo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 667
    invoke-virtual {p0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getType()Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n]"

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
