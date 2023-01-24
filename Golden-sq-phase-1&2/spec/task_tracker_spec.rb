require "task_tracker"

describe TaskTracker do
  it "allow me to add a task, and displays that task in a list" do
    tracker = TaskTracker.new
    tracker.add_task("clean the kitchen")
    expect(tracker.list_tasks()).to eq(["clean the kitchen"])
  end

  it "returns an empty list when we have added no tasks" do
    tracker = TaskTracker.new
    expect(tracker.list_tasks()).to eq([])
  end

  it "returns a list with multiple tasks when we add multiple tasks" do
    tracker = TaskTracker.new
    tracker.add_task("clean the kitchen")
    tracker.add_task("lay the table")
    expect(tracker.list_tasks()).to eq(["clean the kitchen", "lay the table"])
  end

  it "no longer shows a task when we mark it as complete" do
    tracker = TaskTracker.new
    tracker.add_task("clean the kitchen")
    tracker.mark_as_complete("clean the kitchen")
    expect(tracker.list_tasks()).to eq([])
  end

  it "removes the one task we have told it to mark as complete" do
    tracker = TaskTracker.new
    tracker.add_task("clean the kitchen")
    tracker.add_task("lay the table")
    tracker.mark_as_complete("clean the kitchen")
    expect(tracker.list_tasks()).to eq(["lay the table"])
  end
end