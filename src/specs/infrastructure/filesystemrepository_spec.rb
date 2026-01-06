
feature %(We believe that filesystem persistence as an infrastructure adapter will write UTF-8 output reliably,
and will result in an explicit failure when required inputs are missing.
We'll know it is true when missing paths raise and valid paths produce a file.) do
  scenario "FilesystemRepository rejects a nil path (argument required)" do
    Given(:repo) { AsciiDocBuilder::Infrastructure::Persistence::FilesystemRepository.new }

    When(:error) do
      begin
        repo.write(nil, "x")
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("path required") == true }
  end
end